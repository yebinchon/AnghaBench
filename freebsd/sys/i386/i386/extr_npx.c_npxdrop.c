
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_pcb; } ;
struct TYPE_2__ {int pcb_flags; } ;


 int CRITICAL_ASSERT (struct thread*) ;
 int KASSERT (int,char*) ;
 int PCB_NPXINITDONE ;
 struct thread* PCPU_GET (int ) ;
 int PCPU_SET (int ,int *) ;
 int cpu_fxsr ;
 struct thread* curthread ;
 int fnclex () ;
 int fpcurthread ;
 int start_emulating () ;

void
npxdrop(void)
{
 struct thread *td;





 if (!cpu_fxsr)
  fnclex();

 td = PCPU_GET(fpcurthread);
 KASSERT(td == curthread, ("fpudrop: fpcurthread != curthread"));
 CRITICAL_ASSERT(td);
 PCPU_SET(fpcurthread, ((void*)0));
 td->td_pcb->pcb_flags &= ~PCB_NPXINITDONE;
 start_emulating();
}
