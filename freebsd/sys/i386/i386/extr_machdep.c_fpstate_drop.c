
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int td_pcb; } ;
struct TYPE_4__ {TYPE_1__* td_pcb; } ;
struct TYPE_3__ {int pcb_flags; } ;


 int KASSERT (int ,char*) ;
 int PCB_NPXINITDONE ;
 int PCB_NPXUSERINITDONE ;
 int PCB_USER_FPU (int ) ;
 struct thread* PCPU_GET (int ) ;
 int critical_enter () ;
 int critical_exit () ;
 TYPE_2__* curthread ;
 int fpcurthread ;
 int npxdrop () ;

__attribute__((used)) static void
fpstate_drop(struct thread *td)
{

 KASSERT(PCB_USER_FPU(td->td_pcb), ("fpstate_drop: kernel-owned fpu"));
 critical_enter();
 if (PCPU_GET(fpcurthread) == td)
  npxdrop();
 curthread->td_pcb->pcb_flags &= ~(PCB_NPXINITDONE |
     PCB_NPXUSERINITDONE);
 critical_exit();
}
