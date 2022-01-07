
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_a; int tf_s; int tf_t; int tf_tp; int tf_gp; int tf_sp; int tf_ra; int tf_sstatus; int tf_sepc; } ;
struct thread {struct trapframe* td_frame; } ;
struct reg {int a; int s; int t; int tp; int gp; int sp; int ra; int sstatus; int sepc; } ;


 int memcpy (int ,int ,int) ;

int
fill_regs(struct thread *td, struct reg *regs)
{
 struct trapframe *frame;

 frame = td->td_frame;
 regs->sepc = frame->tf_sepc;
 regs->sstatus = frame->tf_sstatus;
 regs->ra = frame->tf_ra;
 regs->sp = frame->tf_sp;
 regs->gp = frame->tf_gp;
 regs->tp = frame->tf_tp;

 memcpy(regs->t, frame->tf_t, sizeof(regs->t));
 memcpy(regs->s, frame->tf_s, sizeof(regs->s));
 memcpy(regs->a, frame->tf_a, sizeof(regs->a));

 return (0);
}
