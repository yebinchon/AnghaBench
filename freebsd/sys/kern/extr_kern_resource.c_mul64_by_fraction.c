
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int flsll (int) ;

__attribute__((used)) static uint64_t
mul64_by_fraction(uint64_t a, uint64_t b, uint64_t c)
{
 uint64_t acc, bh, bl;
 int i, s, sa, sb;
 if (a >= (uint64_t)1 << 63)
  return (0);
 acc = 0;
 for (i = 0; i < 128; i++) {
  sa = flsll(a);
  sb = flsll(b);
  if (sa + sb <= 64)

   return (acc + (a * b) / c);
  if (a >= c) {







   acc += (a / c) * b;
   a %= c;
   sa = flsll(a);
   if (sa + sb <= 64)

    return (acc + (a * b) / c);
  }
  s = 64 - sa;
  bh = b >> s;
  bl = b - (bh << s);
  acc += (a * bl) / c;
  a <<= s;
  b = bh;
 }
 return (0);
}
