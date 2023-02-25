class Solution {
  int findGCD(List<int> nums) {
      nums.sort();
    return gcd(nums.first, nums.last);
  }

  int gcd(int a, int b) {
    if (b == 0) {
      return a;
    }
    return gcd(min(a, b), max(a, b) % min(a, b));
  }
} 