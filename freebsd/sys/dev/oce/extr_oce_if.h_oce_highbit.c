
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t oce_highbit(uint32_t x)
{
 int i;
 int c;
 int b;

 c = 0;
 b = 0;

 for (i = 0; i < 32; i++) {
  if ((1 << i) & x) {
   c++;
   b = i;
  }
 }

 if (c == 1)
  return b;

 return 0;
}
