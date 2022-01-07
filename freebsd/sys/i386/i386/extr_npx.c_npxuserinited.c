
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_flags; } ;


 int CRITICAL_ASSERT (struct thread*) ;
 int PCB_NPXINITDONE ;
 int PCB_NPXUSERINITDONE ;
 scalar_t__ PCB_USER_FPU (struct pcb*) ;

void
npxuserinited(struct thread *td)
{
 struct pcb *pcb;

 CRITICAL_ASSERT(td);
 pcb = td->td_pcb;
 if (PCB_USER_FPU(pcb))
  pcb->pcb_flags |= PCB_NPXINITDONE;
 pcb->pcb_flags |= PCB_NPXUSERINITDONE;
}
