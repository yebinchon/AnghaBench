
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quad_t ;


 int EBUSY ;
 int EINVAL ;
 int NPMC ;
 int PMCF_EN ;
 int* ctl_shadow ;
 int * msr_pmc ;
 int perfmon_inuse ;
 int* pmc_shadow ;
 int rdmsr (int ) ;

int
perfmon_read(int pmc, quad_t *val)
{
 if (pmc < 0 || pmc >= NPMC)
  return EINVAL;

 if (perfmon_inuse & (1 << pmc)) {
  if (ctl_shadow[pmc] & (PMCF_EN << 16))
   *val = rdmsr(msr_pmc[pmc]) & 0xffffffffffULL;
  else
   *val = pmc_shadow[pmc];
  return 0;
 }

 return EBUSY;
}
