
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int sqrti(int val)
{
 float d, x = val;

 if (val == 0)
  return 0;

 do {
  float y = (x + (float)val / x) / 2;
  d = (y > x) ? y - x : x - y;
  x = y;
 } while (d >= 0.5);

 return (int)x;
}
