
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_eflags; int tf_eax; int tf_err; int tf_eip; int tf_edx; } ;
struct thread {int * td_retval; struct trapframe* td_frame; } ;




 int PSL_C ;
 int cloudabi_convert_errno (int) ;

__attribute__((used)) static void
cloudabi32_set_syscall_retval(struct thread *td, int error)
{
 struct trapframe *frame = td->td_frame;

 switch (error) {
 case 0:

  frame->tf_eax = td->td_retval[0];
  frame->tf_edx = td->td_retval[1];
  frame->tf_eflags &= ~PSL_C;
  break;
 case 128:

  frame->tf_eip -= frame->tf_err;
  break;
 case 129:
  break;
 default:

  frame->tf_eax = cloudabi_convert_errno(error);
  frame->tf_eflags |= PSL_C;
  break;
 }
}
