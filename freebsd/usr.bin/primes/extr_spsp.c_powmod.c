
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int mulmod (int,int,int) ;

__attribute__((used)) static uint64_t
powmod(uint64_t a, uint64_t r, uint64_t n)
{
 uint64_t x = 1;

 while (r != 0) {
  if (r & 1)
   x = mulmod(a, x, n);
  a = mulmod(a, a, n);
  r >>= 1;
 }

 return (x);
}
