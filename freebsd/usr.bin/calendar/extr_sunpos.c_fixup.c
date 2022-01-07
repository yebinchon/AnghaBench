
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double
fixup(double *d)
{

 if (*d < 0) {
  while (*d < 0)
   *d += 360;
 } else {
  while (*d > 360)
   *d -= 360;
 }

 return (*d);
}
