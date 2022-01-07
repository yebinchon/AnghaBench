
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int srr1; } ;
struct thread {struct trapframe* td_frame; } ;


 int PSL_SE ;

int
ptrace_clear_single_step(struct thread *td)
{
 struct trapframe *tf;

 tf = td->td_frame;
 tf->srr1 &= ~PSL_SE;

 return (0);
}
