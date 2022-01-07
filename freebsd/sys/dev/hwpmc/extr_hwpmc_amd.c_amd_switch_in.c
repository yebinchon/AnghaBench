
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_process {int pp_flags; } ;
struct pmc_cpu {int dummy; } ;


 int CR4_PCE ;
 int MDP ;
 int PMCDBG3 (int ,int ,int,char*,struct pmc_cpu*,struct pmc_process*,int) ;
 int PMC_PP_ENABLE_MSR_ACCESS ;
 int SWI ;
 int load_cr4 (int) ;
 int rcr4 () ;

__attribute__((used)) static int
amd_switch_in(struct pmc_cpu *pc, struct pmc_process *pp)
{
 (void) pc;

 PMCDBG3(MDP,SWI,1, "pc=%p pp=%p enable-msr=%d", pc, pp,
     (pp->pp_flags & PMC_PP_ENABLE_MSR_ACCESS) != 0);


 if (pp->pp_flags & PMC_PP_ENABLE_MSR_ACCESS)
  load_cr4(rcr4() | CR4_PCE);

 return 0;
}
