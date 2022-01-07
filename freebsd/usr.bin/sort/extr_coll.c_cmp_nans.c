
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
cmp_nans(double d1, double d2)
{

 if (d1 < d2)
  return (-1);
 if (d1 > d2)
  return (+1);
 return (0);
}
