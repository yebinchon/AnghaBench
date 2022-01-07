
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EINVAL ;
 int NPMC ;
 unsigned int* ctl_shadow ;
 int perfmon_inuse ;

int
perfmon_get(int pmc, unsigned int *control)
{
 if (pmc < 0 || pmc >= NPMC)
  return EINVAL;

 if (perfmon_inuse & (1 << pmc)) {
  *control = ctl_shadow[pmc];
  return 0;
 }
 return EBUSY;
}
