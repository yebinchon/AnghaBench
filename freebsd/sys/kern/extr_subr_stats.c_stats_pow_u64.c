
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline uint64_t
stats_pow_u64(uint64_t base, uint64_t exp)
{
 uint64_t result = 1;

 while (exp) {
  if (exp & 1)
   result *= base;
  exp >>= 1;
  base *= base;
 }

 return (result);
}
