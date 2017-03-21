//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
    
        var peopleWhoLikeThatFlavor: [String] = []
        
        
        for(key, value) in favoriteFlavorsOfIceCream {
            
            if value == flavor {
            peopleWhoLikeThatFlavor.append(key)
            }
        
        }
    
    return peopleWhoLikeThatFlavor
    }
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int{
    
        var numberOfPeopleWhoLikeTheFlavor: Int = 0
        
        for(key, value) in favoriteFlavorsOfIceCream {
        
            if value == flavor {
            numberOfPeopleWhoLikeTheFlavor += 1
            }
        }
        return numberOfPeopleWhoLikeTheFlavor
    }
    
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person : String) -> String? {
        
        if let likedFlavor = favoriteFlavorsOfIceCream[person] {
        return likedFlavor } else {
    return nil
    }
    
    }
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson: String) -> Bool {
        if favoriteFlavorsOfIceCream[forPerson] != nil {
        favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson)
            return true
        } else {
            return false
        }
    
    
    }
    
    
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
        favoriteFlavorsOfIceCream.removeValue(forKey: person)
            return true
        } else {
        return false
        }
    
    }
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
    
        return favoriteFlavorsOfIceCream.count
        
        
    }
    
    
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
        favoriteFlavorsOfIceCream.updateValue(withFlavor, forKey: person)
            return true
        } else {
        return false
        }
    
    
    }
    
    
    
    
    
    
    
    // 9.
    
    
    func attendeeList() -> String {
        var attendees: String = ""
        
    let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
    
        for(index, name) in allNames.enumerated() {
            if index == allNames.count - 1 {
                attendees += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
            } else {
            attendees += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)\n"
            }
        }
    return attendees
    }
    
    
    
    
    

}
