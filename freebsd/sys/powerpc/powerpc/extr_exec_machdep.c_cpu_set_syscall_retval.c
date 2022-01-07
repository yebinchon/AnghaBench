
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {scalar_t__* fixreg; int cr; int srr0; } ;
struct thread {int* td_retval; struct trapframe* td_frame; struct proc* td_proc; } ;
struct proc {int dummy; } ;


 int EJUSTRETURN ;

 int FIRSTARG ;
 int SV_ABI_ERRNO (struct proc*,int) ;
 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (struct proc*,int ) ;
 scalar_t__ SYS___syscall ;
 int SYS_freebsd6_lseek ;
 int SYS_lseek ;

void
cpu_set_syscall_retval(struct thread *td, int error)
{
 struct proc *p;
 struct trapframe *tf;
 int fixup;

 if (error == EJUSTRETURN)
  return;

 p = td->td_proc;
 tf = td->td_frame;

 if (tf->fixreg[0] == SYS___syscall &&
     (SV_PROC_FLAG(p, SV_ILP32))) {
  int code = tf->fixreg[FIRSTARG + 1];
  fixup = (



      code != SYS_lseek) ? 1 : 0;
 } else
  fixup = 0;

 switch (error) {
 case 0:
  if (fixup) {



   tf->fixreg[FIRSTARG] = 0;
   tf->fixreg[FIRSTARG + 1] = td->td_retval[0];
  } else {
   tf->fixreg[FIRSTARG] = td->td_retval[0];
   tf->fixreg[FIRSTARG + 1] = td->td_retval[1];
  }
  tf->cr &= ~0x10000000;
  break;
 case 128:



  tf->srr0 -= 4;
  break;
 default:
  tf->fixreg[FIRSTARG] = SV_ABI_ERRNO(p, error);
  tf->cr |= 0x10000000;
  break;
 }
}
