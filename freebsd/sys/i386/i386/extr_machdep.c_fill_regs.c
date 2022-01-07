
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;
struct thread {struct pcb* td_pcb; struct trapframe* td_frame; } ;
struct reg {int r_gs; } ;
struct pcb {int pcb_gs; } ;


 int fill_frame_regs (struct trapframe*,struct reg*) ;

int
fill_regs(struct thread *td, struct reg *regs)
{
 struct pcb *pcb;
 struct trapframe *tp;

 tp = td->td_frame;
 pcb = td->td_pcb;
 regs->r_gs = pcb->pcb_gs;
 return (fill_frame_regs(tp, regs));
}
