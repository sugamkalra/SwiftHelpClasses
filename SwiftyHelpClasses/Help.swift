//
//  Help.swift
//  SwiftyHelpClasses
//
//  Created by Sugam Kalra on 29/12/15.
//  Copyright © 2015 Sugam Kalra. All rights reserved.
//

import Foundation

/**
 * Help model
 *
 * @author Sugam
 * @version 1.0
 */
class Help {
    
    /// the title
    var title: String
    
    /// the content
    var content: String
    
    /// expanded or not status
    var expanded: Bool
    
    /// flag: true - will not be included in Help screen (opened from "(?)"), false - will include
    var notIncludeInHelp = false
    
    /**
     Init
     */
    init(title: String, content: String) {
        self.title = title
        self.content = content
        self.expanded = false
    }
}

/**
 * Extension of Help for creating data from json
 *
 * @author Sugam
 * @version 1.0
 */
extension Help {
    /**
     Create a help from json
     
     - parameter json: the json
     */
    class func helpFromJSON(json: JSON) -> Help {
        let help = Help(title: json["title"].string!, content: json["content"].string!)
        help.notIncludeInHelp = json["notIncludeInHelp"].bool ?? false
        return help
    }
}