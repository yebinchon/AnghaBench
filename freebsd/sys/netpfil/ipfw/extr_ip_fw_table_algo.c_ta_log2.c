
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static int
ta_log2(uint32_t v)
{
 uint32_t r;

 r = 0;
 while (v >>= 1)
  r++;

 return (r);
}
