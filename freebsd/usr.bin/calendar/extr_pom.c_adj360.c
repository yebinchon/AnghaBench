
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
adj360(double *deg)
{

 for (;;)
  if (*deg < 0)
   *deg += 360;
  else if (*deg > 360)
   *deg -= 360;
  else
   break;
}
