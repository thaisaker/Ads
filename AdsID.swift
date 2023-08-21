//
//  AdsID.swift
//  Lie Detector
//
//  Created by Pham Van Thai on 04/08/2023.
//

import Foundation

struct ADS: Codable {
    let status: Int
    let message, packagename, appName, appID: String
    let data: [Datum]

    enum CodingKeys: String, CodingKey {
        case status, message, packagename
        case appName = "app_name"
        case appID = "app_id"
        case data
    }
}

// MARK: - Datum
struct Datum: Codable {
    let order: Int
    let name, id: String?
}
