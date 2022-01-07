
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EINVAL ;
 int NPMC ;
 int * msr_pmc ;
 int perfmon_inuse ;
 scalar_t__* pmc_shadow ;
 int wrmsr (int ,scalar_t__) ;

int
perfmon_reset(int pmc)
{
 if (pmc < 0 || pmc >= NPMC)
  return EINVAL;

 if (perfmon_inuse & (1 << pmc)) {
  wrmsr(msr_pmc[pmc], pmc_shadow[pmc] = 0);
  return 0;
 }
 return EBUSY;
}
