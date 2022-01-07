
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_pflags; } ;
struct pcb {int dummy; } ;


 int PCB_USER_FPU (struct pcb*) ;
 struct thread* PCPU_GET (int ) ;
 int PCPU_SET (int ,int *) ;
 int TDP_KTHREAD ;
 int fpcurthread ;
 scalar_t__ lazy_fpu_switch ;
 int restore_npx_curthread (struct thread*,struct pcb*) ;
 int start_emulating () ;

void
npxswitch(struct thread *td, struct pcb *pcb)
{

 if (lazy_fpu_switch || (td->td_pflags & TDP_KTHREAD) != 0 ||
     !PCB_USER_FPU(pcb)) {
  start_emulating();
  PCPU_SET(fpcurthread, ((void*)0));
 } else if (PCPU_GET(fpcurthread) != td) {
  restore_npx_curthread(td, pcb);
 }
}
