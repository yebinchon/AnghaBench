
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_wstate; } ;
struct thread {struct trapframe* td_frame; } ;
struct reg {int r_wstate; int r_tstate; } ;


 int EINVAL ;
 int TSTATE_SECURE (int ) ;
 int bcopy (struct reg*,struct trapframe*,int) ;

int
set_regs(struct thread *td, struct reg *regs)
{
 struct trapframe *tf;

 if (!TSTATE_SECURE(regs->r_tstate))
  return (EINVAL);
 tf = td->td_frame;
 regs->r_wstate = tf->tf_wstate;
 bcopy(regs, tf, sizeof(*regs));
 return (0);
}
