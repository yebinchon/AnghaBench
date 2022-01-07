
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static uint64_t
mulmod(uint64_t a, uint64_t b, uint64_t n)
{
 uint64_t x = 0;
 uint64_t an = a % n;

 while (b != 0) {
  if (b & 1) {
   x += an;
   if ((x < an) || (x >= n))
    x -= n;
  }
  if (an + an < an)
   an = an + an - n;
  else if (an + an >= n)
   an = an + an - n;
  else
   an = an + an;
  b >>= 1;
 }

 return (x);
}
