
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int register_t ;


 int EBUSY ;
 int EINVAL ;
 int NPMC ;
 int PMCF_EN ;
 int* ctl_shadow ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int * msr_pmc ;
 int perfmon_inuse ;
 int* pmc_shadow ;
 int rdmsr (int ) ;
 int writectl (int) ;

int
perfmon_stop(int pmc)
{
 register_t saveintr;

 if (pmc < 0 || pmc >= NPMC)
  return EINVAL;

 if (perfmon_inuse & (1 << pmc)) {
  saveintr = intr_disable();
  pmc_shadow[pmc] = rdmsr(msr_pmc[pmc]) & 0xffffffffffULL;
  ctl_shadow[pmc] &= ~(PMCF_EN << 16);
  writectl(pmc);
  intr_restore(saveintr);
  return 0;
 }
 return EBUSY;
}
