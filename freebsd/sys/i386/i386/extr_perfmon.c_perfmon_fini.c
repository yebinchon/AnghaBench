
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EINVAL ;
 int NPMC ;
 scalar_t__* ctl_shadow ;
 int perfmon_inuse ;
 int perfmon_stop (int) ;

int
perfmon_fini(int pmc)
{
 if (pmc < 0 || pmc >= NPMC)
  return EINVAL;

 if (perfmon_inuse & (1 << pmc)) {
  perfmon_stop(pmc);
  ctl_shadow[pmc] = 0;
  perfmon_inuse &= ~(1 << pmc);
  return 0;
 }
 return EBUSY;
}
