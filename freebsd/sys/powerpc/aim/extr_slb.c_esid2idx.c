
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline int
esid2idx(uint64_t esid, int level)
{
 int shift;

 shift = level * 4;
 return ((esid >> shift) & 0xF);
}
