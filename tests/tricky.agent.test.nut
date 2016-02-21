/**
 * More edge cases
 */

class Tricky_TestCase extends ImpTestCase {
  function test_1() {
    local s = "\"שָׁלוֹם\""; // hebrew for "peace"
    local d = JSONParser.parse(s);
    this.assertEqual(s, "\"" + d + "\"");
  }

  function test_2() {
    local s = "{\"unicode\":\"שָׁלוֹם\"}"; // hebrew for "peace"
    local d = JSONParser.parse(s);
    this.assertDeepEqual(d, {"unicode" : "שָׁלוֹם"});
  }
}