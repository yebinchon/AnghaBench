
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_a; int tf_s; int tf_t; int tf_tp; int tf_gp; int tf_sp; int tf_ra; int tf_sepc; } ;
struct thread {struct trapframe* td_frame; } ;
struct reg {int a; int s; int t; int tp; int gp; int sp; int ra; int sepc; } ;


 int memcpy (int ,int ,int) ;

int
set_regs(struct thread *td, struct reg *regs)
{
 struct trapframe *frame;

 frame = td->td_frame;
 frame->tf_sepc = regs->sepc;
 frame->tf_ra = regs->ra;
 frame->tf_sp = regs->sp;
 frame->tf_gp = regs->gp;
 frame->tf_tp = regs->tp;

 memcpy(frame->tf_t, regs->t, sizeof(frame->tf_t));
 memcpy(frame->tf_s, regs->s, sizeof(frame->tf_s));
 memcpy(frame->tf_a, regs->a, sizeof(frame->tf_a));

 return (0);
}
