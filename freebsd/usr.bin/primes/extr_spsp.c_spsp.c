
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int powmod (int,int,int) ;

__attribute__((used)) static int
spsp(uint64_t n, uint64_t p)
{
 uint64_t x;
 uint64_t r = n - 1;
 int k = 0;


 while ((r & 1) == 0) {
  k++;
  r >>= 1;
 }


 x = powmod(p, r, n);
 if (x == 1)
  return (1);


 while (k > 0) {
  if (x == n - 1)
   return (1);
  x = powmod(x, 2, n);
  k--;
 }


 return (0);
}
