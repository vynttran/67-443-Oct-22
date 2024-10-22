/*:
 # Star Wars Protocols
 
 Below are six structs -- three for Jedi ("Master ...") and three for Sith ("Darth ...").  As you can see comparing the structs, there are some powers which are *specific to the Jedi*, some that are *specific to the Sith*, and some that are *common to any Force user*, whether Jedi or Sith.  Using protocols and extensions as appropriate, refactor this set of structs so that each struct is smaller and less verbose, but retains all of the functionality listed in the handout.
*/
struct MasterYoda {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 9 }
  func prescience() -> Int { return 5 }
  func introspection() -> String { return "Search your feelings." }
  func mindControl() -> String { return "Do or do not." }
}

struct MasterObiWan {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
  func introspection() -> String { return "Search your feelings." }
  func mindControl() -> String { return "These are not the droids you're looking for." }
}

struct MasterQuiGon {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
  func mindControl() -> String { return "Republic credits will do." }
  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
}

struct DarthVader {
  func lightSaberSkill() -> Int { return 9 }
  func telekinesis() -> Int { return 8 }
  func prescience() -> Int { return 5 }
  func forceChoke() -> Bool { return true }
  func forceLightning() -> Bool { return false }
}

struct DarthSidious {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 7 }
  func prescience() -> Int { return 6 }
  func forceChoke() -> Bool { return true }
  func forceLightning() -> Bool { return true }
}

struct DarthTyrannous {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
  func forceChoke() -> Bool { return false }
  func forceLightning() -> Bool { return true }
}

/*:
 Place your refactored structs below:
 */
protocol ForceUserProtocol {
  func lightSaberSkill() -> Int
  func telekinesis() -> Int
  func prescience() -> Int
}

protocol JediProtocol: ForceUserProtocol {
  func introspection() -> String
  func mindControl() -> String
}

protocol SithProtocol: ForceUserProtocol {
  func forceChoke() -> Bool
  func forceLightning() -> Bool
}

extension ForceUserProtocol {
  func lightSaberSkill() -> Int { 8 }
  func telekinesis() -> Int { 5 }
  func prescience() -> Int { 5 }
}

struct MasterYoda: JediProtocol {
  func introspection() -> String { "Search your feelings." }
  func mindControl() -> String { "Do or do not." }
  func telekinesis() -> Int { 9 }
}

struct MasterObiWan: JediProtocol {
  func introspection() -> String { "Search your feelings." }
  func mindControl() -> String { "These are not the droids you're looking for." }
}

struct MasterQuiGon: JediProtocol {
  func introspection() -> String { "Feel, don’t think. Trust your instincts." }
  func mindControl() -> String { "Republic credits will do." }
}

struct DarthVader: SithProtocol {
  func lightSaberSkill() -> Int { 9 }
  func telekinesis() -> Int { 8 }
  func forceChoke() -> Bool { true }
  func forceLightning() -> Bool { false }
}

struct DarthSidious: SithProtocol {
  func telekinesis() -> Int { 7 }
  func prescience() -> Int { 6 }
  func forceChoke() -> Bool { true }
  func forceLightning() -> Bool { true }
}

struct DarthTyrannous: SithProtocol {
  func forceChoke() -> Bool { false }
  func forceLightning() -> Bool { true }
}
                                                                                                                    
