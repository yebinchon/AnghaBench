
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
dbl_cmp(const void *a, const void *b)
{
 const double *aa = a;
 const double *bb = b;

 if (*aa < *bb)
  return (-1);
 else if (*aa > *bb)
  return (1);
 else
  return (0);
}
