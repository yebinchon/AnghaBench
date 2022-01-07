
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int register_t ;


 int EINVAL ;
 int NPMC ;
 int PMCF_SYS_FLAGS ;
 unsigned int* ctl_shadow ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int * msr_pmc ;
 int perfmon_inuse ;
 scalar_t__* pmc_shadow ;
 int writectl (int) ;
 int wrmsr (int ,scalar_t__) ;

int
perfmon_setup(int pmc, unsigned int control)
{
 register_t saveintr;

 if (pmc < 0 || pmc >= NPMC)
  return EINVAL;

 perfmon_inuse |= (1 << pmc);
 control &= ~(PMCF_SYS_FLAGS << 16);
 saveintr = intr_disable();
 ctl_shadow[pmc] = control;
 writectl(pmc);
 wrmsr(msr_pmc[pmc], pmc_shadow[pmc] = 0);
 intr_restore(saveintr);
 return 0;
}
