
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct thread {int td_pmcpend; TYPE_1__* td_proc; } ;
struct pmc {int pm_flags; } ;
struct TYPE_2__ {int p_flag; } ;


 int PMC_F_USERCALLCHAIN ;
 int PMC_UR ;
 int P_KPROC ;
 int TRAPF_USERMODE (struct trapframe*) ;
 int atomic_add_int (int *,int) ;
 struct thread* curthread ;
 int pmc_add_sample (int,struct pmc*,struct trapframe*) ;

int
pmc_process_interrupt(int ring, struct pmc *pm, struct trapframe *tf)
{
 struct thread *td;

 td = curthread;
 if ((pm->pm_flags & PMC_F_USERCALLCHAIN) &&
     (td->td_proc->p_flag & P_KPROC) == 0 &&
     !TRAPF_USERMODE(tf)) {
  atomic_add_int(&td->td_pmcpend, 1);
  return (pmc_add_sample(PMC_UR, pm, tf));
 }
 return (pmc_add_sample(ring, pm, tf));
}
