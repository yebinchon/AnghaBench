
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;



__attribute__((used)) static int32_t
z_gcd(int32_t x, int32_t y)
{
 int32_t w;

 while (y != 0) {
  w = x % y;
  x = y;
  y = w;
 }

 return (x);
}
