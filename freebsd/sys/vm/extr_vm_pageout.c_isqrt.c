
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int fls (scalar_t__) ;

__attribute__((used)) static u_int
isqrt(u_int num)
{
 u_int bit, root, tmp;

 bit = num != 0 ? (1u << ((fls(num) - 1) & ~1)) : 0;
 root = 0;
 while (bit != 0) {
  tmp = root + bit;
  root >>= 1;
  if (num >= tmp) {
   num -= tmp;
   root += bit;
  }
  bit >>= 2;
 }
 return (root);
}
