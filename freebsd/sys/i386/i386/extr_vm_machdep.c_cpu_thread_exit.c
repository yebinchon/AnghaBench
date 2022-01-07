
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_pcb; } ;
struct TYPE_2__ {int pcb_flags; } ;


 int PCB_DBREGS ;
 struct thread* PCPU_GET (int ) ;
 int critical_enter () ;
 int critical_exit () ;
 int fpcurthread ;
 int npxdrop () ;
 int reset_dbregs () ;

void
cpu_thread_exit(struct thread *td)
{

 critical_enter();
 if (td == PCPU_GET(fpcurthread))
  npxdrop();
 critical_exit();


 if (td->td_pcb->pcb_flags & PCB_DBREGS) {
  reset_dbregs();
  td->td_pcb->pcb_flags &= ~PCB_DBREGS;
 }
}
