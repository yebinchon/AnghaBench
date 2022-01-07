
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pcb {int pcb_flags; scalar_t__ pcb_initial_npxcw; int pcb_save; } ;


 int PCB_NPXINITDONE ;
 int PCB_NPXUSERINITDONE ;
 scalar_t__ PCB_USER_FPU (struct pcb*) ;
 int PCPU_SET (int ,struct thread*) ;
 scalar_t__ __INITIAL_NPXCW__ ;
 int bcopy (int ,int ,int ) ;
 scalar_t__ cpu_fxsr ;
 int cpu_max_ext_state_size ;
 int fldcw (scalar_t__) ;
 int fpcurthread ;
 int fpu_clean_state () ;
 int fpurstor (int ) ;
 int npx_initialstate ;
 int stop_emulating () ;

__attribute__((used)) static void
restore_npx_curthread(struct thread *td, struct pcb *pcb)
{




 PCPU_SET(fpcurthread, td);

 stop_emulating();
 if (cpu_fxsr)
  fpu_clean_state();

 if ((pcb->pcb_flags & PCB_NPXINITDONE) == 0) {
  bcopy(npx_initialstate, pcb->pcb_save, cpu_max_ext_state_size);
  fpurstor(pcb->pcb_save);
  if (pcb->pcb_initial_npxcw != __INITIAL_NPXCW__)
   fldcw(pcb->pcb_initial_npxcw);
  pcb->pcb_flags |= PCB_NPXINITDONE;
  if (PCB_USER_FPU(pcb))
   pcb->pcb_flags |= PCB_NPXUSERINITDONE;
 } else {
  fpurstor(pcb->pcb_save);
 }
}
