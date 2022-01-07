
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline uint64_t
esid2base(uint64_t esid, int level)
{
 uint64_t mask;
 int shift;

 shift = (level + 1) * 4;
 mask = ~((1ULL << shift) - 1);
 return (esid & mask);
}
