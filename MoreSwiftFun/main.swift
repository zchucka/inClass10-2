//
//  main.swift
//  MoreSwiftFun
//
//  Created by Chucka, Zachary Tyler on 10/2/18.
//  Copyright © 2018 Chucka, Zachary Tyler. All rights reserved.
//

import Foundation

print("Hello, World!")

// MARK: - Guard
// use guard when you want an early exit from a function when a condition fails
// useful to prevent large nested statements
// when used with optional binding, your variables persist outside the scope of the guard

/*
// converted to use guard
func getPositiveInteger() throws -> Int {
    print("Insert an integer: ", terminator: "")
    
    // allowed if you seperate by commas
    guard let stringValue = readLine() , let intValue = Int(stringValue), intValue > 0 else {
        throw userInputError.invalidPositiveInteger
    }
    
    // string value and int value can be used here
    return intValue
}

// MARK: - Error handling
// when a programmer anticipates something might go wrong they will throw an error
// and require calling code to acknowledge an error might be thrown
// lets define our own error
// if a function throws an error, add a throws clause after the parameter list
// we need to add try to the call of a code that can throw an error
// we have two options for handling errors try? and do try
// try? will assign nil to a value if an exception is thrown
// do {} catch {} block

enum userInputError: Error {
    case invalidInteger
    case invalidPositiveInteger
}
// instead of returning -1, we want to throw an UserInputError

/*
 func getPositiveInteger() -> Int {
 print("Insert an integer: ", terminator: "")
 let num = readLine()
 if let x = num
 {
 if let y = Int(x)
 {
 if y > 0
 {
 return y
 }
 
 }
 }
 return -1
 }
 */

// print(try? getPositiveInteger())

// note: code doesn't crash with bad input
do {
    let value = try getPositiveInteger()
    print(value)
} catch userInputError.invalidPositiveInteger {
    print("couldn't get a positive int from the user")
}
*/

// MARK: - Closures ... dun dun dun
// for more info ADS 5.1
// a function is a first class citizen in swift
// aka you can use a function anywhere you use a value
// just like values, functions have types
// examples
// () -> Void          the type of all functions that accept no args and don't return a value
// the type is based on function's signature
// () -> Int
// (Double) -> (Double)
// a function that is defined inside the body of another function is called a local function
// reasons why you might do this:
// - defining a helper that is only used in this function
// - to keep the code that is highly cohesive near each other for readability
// - function is only called one time
// - function is going to passed into another function as an argument
//
// a function that has no name is an anonymous function (aka closure)
// closure: a piece of functionality that you can pass around in your code to be executed at a later time
// note: closures "capture" their external references, more on this later
//  EXAMPLE

func sayHello() {
    print("Hello!")
}

// the type of say hello is () -> Void
// so lets define another function that can execute any () -> Voird type functions

func executeVoidFunctions(f: () -> Void) {
    // execute f
    f()
}

// call executeVoidFunctions passing in sayHello
executeVoidFunctions(f: sayHello)
// call execute void funtion f: passing in a closure
executeVoidFunctions(f: { () -> Void in
    // closure start with { and end with }
    // on the first line we specify parameter list, return type and the word in to seperate header from body
    print("Goodbye")
})




 
