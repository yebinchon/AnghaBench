
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;



__attribute__((used)) static int
iwn_ampdu_check_bitmap(uint64_t bitmap, int start, int idx)
{
 int bit, shift;

 bit = idx - start;
 shift = 0;
 if (bit >= 64) {
  shift = 0x100 - bit;
  bit = 0;
 } else if (bit <= -64)
  bit = 0x100 + bit;
 else if (bit < 0) {
  shift = -bit;
  bit = 0;
 }

 if (bit - shift >= 64)
  return (0);

 return ((bitmap & (1ULL << (bit - shift))) != 0);
}
