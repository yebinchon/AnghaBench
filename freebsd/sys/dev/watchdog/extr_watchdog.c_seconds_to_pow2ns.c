
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 unsigned long long flsll (unsigned long long) ;

__attribute__((used)) static int
seconds_to_pow2ns(int seconds)
{
 uint64_t power;
 uint64_t ns;
 uint64_t shifted;

 ns = ((uint64_t)seconds) * 1000000000ULL;
 power = flsll(ns);
 shifted = 1ULL << power;
 if (shifted <= ns) {
  power++;
 }
 return (power);
}
