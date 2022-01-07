
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
isqrt(int n)
{
 int y, x = 1;

 if (n == 0)
  return (0);

 do {
  y = x;
  x = n / x;
  x += y;
  x /= 2;
 } while ((x - y) > 1 || (x - y) < -1);

 return (x);
}
