
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct pmc_process {int dummy; } ;
struct pmc_cpu {int dummy; } ;


 int CR4_PCE ;
 int MDP ;
 int PMCDBG3 (int ,int ,int,char*,struct pmc_cpu*,struct pmc_process*,int ) ;
 int SWO ;
 int load_cr4 (int) ;
 int rcr4 () ;

__attribute__((used)) static int
intel_switch_out(struct pmc_cpu *pc, struct pmc_process *pp)
{
 (void) pc;
 (void) pp;

 PMCDBG3(MDP,SWO,1, "pc=%p pp=%p cr4=0x%jx", pc, pp,
     (uintmax_t) rcr4());


 load_cr4(rcr4() & ~CR4_PCE);

 return 0;
}
