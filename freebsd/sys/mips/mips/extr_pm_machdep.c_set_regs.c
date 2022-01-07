
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int sr; } ;
struct thread {scalar_t__ td_frame; } ;
struct reg {int dummy; } ;
typedef int register_t ;


 int memcpy (scalar_t__,struct reg*,int) ;

int
set_regs(struct thread *td, struct reg *regs)
{
 struct trapframe *f;
 register_t sr;

 f = (struct trapframe *) td->td_frame;



 sr = f->sr;
 memcpy(td->td_frame, regs, sizeof(struct reg));
 f->sr = sr;
 return (0);
}
