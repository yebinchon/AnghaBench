
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;
struct thread {struct trapframe* td_frame; } ;
struct reg {int dummy; } ;


 int memcpy (struct reg*,struct trapframe*,int) ;

int
fill_regs(struct thread *td, struct reg *regs)
{
 struct trapframe *tf;

 tf = td->td_frame;
 memcpy(regs, tf, sizeof(struct reg));

 return (0);
}
