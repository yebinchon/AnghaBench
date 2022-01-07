
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;



uint32_t
msb64(uint64_t x)
{
 uint64_t m = 1ULL << 63;
 int i;

 for (i = 63; i >= 0; i--, m >>=1)
  if (m & x)
   return i;
 return 0;
}
