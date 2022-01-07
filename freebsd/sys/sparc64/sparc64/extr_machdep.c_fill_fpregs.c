
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_gsr; int tf_fsr; } ;
struct thread {struct trapframe* td_frame; struct pcb* td_pcb; } ;
struct pcb {int pcb_ufp; } ;
struct fpreg {scalar_t__* fr_pad; int fr_gsr; int fr_fsr; int fr_regs; } ;


 int bcopy (int ,int ,int) ;

int
fill_fpregs(struct thread *td, struct fpreg *fpregs)
{
 struct trapframe *tf;
 struct pcb *pcb;

 pcb = td->td_pcb;
 tf = td->td_frame;
 bcopy(pcb->pcb_ufp, fpregs->fr_regs, sizeof(fpregs->fr_regs));
 fpregs->fr_fsr = tf->tf_fsr;
 fpregs->fr_gsr = tf->tf_gsr;
 fpregs->fr_pad[0] = 0;
 return (0);
}
