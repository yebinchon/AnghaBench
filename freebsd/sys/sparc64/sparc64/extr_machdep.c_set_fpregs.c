
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_gsr; int tf_fsr; int tf_fprs; } ;
struct thread {struct trapframe* td_frame; struct pcb* td_pcb; } ;
struct pcb {int pcb_ufp; } ;
struct fpreg {int fr_gsr; int fr_fsr; int fr_regs; } ;


 int FPRS_FEF ;
 int bcopy (int ,int ,int) ;

int
set_fpregs(struct thread *td, struct fpreg *fpregs)
{
 struct trapframe *tf;
 struct pcb *pcb;

 pcb = td->td_pcb;
 tf = td->td_frame;
 tf->tf_fprs &= ~FPRS_FEF;
 bcopy(fpregs->fr_regs, pcb->pcb_ufp, sizeof(pcb->pcb_ufp));
 tf->tf_fsr = fpregs->fr_fsr;
 tf->tf_gsr = fpregs->fr_gsr;
 return (0);
}
