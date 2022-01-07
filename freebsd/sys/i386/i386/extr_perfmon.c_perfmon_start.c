
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
 int * pmc_shadow ;
 int writectl (int) ;
 int wrmsr (int ,int ) ;

int
perfmon_start(int pmc)
{
 register_t saveintr;

 if (pmc < 0 || pmc >= NPMC)
  return EINVAL;

 if (perfmon_inuse & (1 << pmc)) {
  saveintr = intr_disable();
  ctl_shadow[pmc] |= (PMCF_EN << 16);
  wrmsr(msr_pmc[pmc], pmc_shadow[pmc]);
  writectl(pmc);
  intr_restore(saveintr);
  return 0;
 }
 return EBUSY;
}
