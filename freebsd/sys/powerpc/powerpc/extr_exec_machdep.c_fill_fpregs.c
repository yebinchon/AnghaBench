
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {struct pcb* td_pcb; } ;
struct TYPE_4__ {TYPE_1__* fpr; int fpscr; } ;
struct pcb {int pcb_flags; TYPE_2__ pcb_fpu; } ;
struct fpreg {int * fpreg; int fpscr; } ;
struct TYPE_3__ {int fpr; } ;


 int PCB_FPREGS ;
 int memcpy (int *,int *,int) ;
 int memset (struct fpreg*,int ,int) ;

int
fill_fpregs(struct thread *td, struct fpreg *fpregs)
{
 struct pcb *pcb;
 int i;

 pcb = td->td_pcb;

 if ((pcb->pcb_flags & PCB_FPREGS) == 0)
  memset(fpregs, 0, sizeof(struct fpreg));
 else {
  memcpy(&fpregs->fpscr, &pcb->pcb_fpu.fpscr, sizeof(double));
  for (i = 0; i < 32; i++)
   memcpy(&fpregs->fpreg[i], &pcb->pcb_fpu.fpr[i].fpr,
       sizeof(double));
 }

 return (0);
}
