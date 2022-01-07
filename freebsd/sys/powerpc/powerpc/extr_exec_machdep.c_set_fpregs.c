
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {struct pcb* td_pcb; } ;
struct TYPE_4__ {TYPE_1__* fpr; int fpscr; } ;
struct pcb {TYPE_2__ pcb_fpu; int pcb_flags; } ;
struct fpreg {int * fpreg; int fpscr; } ;
struct TYPE_3__ {int fpr; } ;


 int PCB_FPREGS ;
 int memcpy (int *,int *,int) ;

int
set_fpregs(struct thread *td, struct fpreg *fpregs)
{
 struct pcb *pcb;
 int i;

 pcb = td->td_pcb;
 pcb->pcb_flags |= PCB_FPREGS;
 memcpy(&pcb->pcb_fpu.fpscr, &fpregs->fpscr, sizeof(double));
 for (i = 0; i < 32; i++) {
  memcpy(&pcb->pcb_fpu.fpr[i].fpr, &fpregs->fpreg[i],
      sizeof(double));
 }

 return (0);
}
