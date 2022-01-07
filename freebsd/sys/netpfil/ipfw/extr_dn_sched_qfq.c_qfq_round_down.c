
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;



__attribute__((used)) static inline uint64_t qfq_round_down(uint64_t ts, unsigned int shift)
{
 return ts & ~((1ULL << shift) - 1);
}
