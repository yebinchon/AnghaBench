
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {scalar_t__ srr0; } ;
struct thread {struct trapframe* td_frame; } ;
typedef scalar_t__ register_t ;



int
ptrace_set_pc(struct thread *td, unsigned long addr)
{
 struct trapframe *tf;

 tf = td->td_frame;
 tf->srr0 = (register_t)addr;

 return (0);
}
