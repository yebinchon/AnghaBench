
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; int td_proc; int * td_retval; } ;
struct TYPE_2__ {int tf_eflags; int tf_eax; int tf_err; int tf_eip; int tf_edx; } ;




 int PSL_C ;
 int SV_ABI_ERRNO (int ,int) ;

void
cpu_set_syscall_retval(struct thread *td, int error)
{

 switch (error) {
 case 0:
  td->td_frame->tf_eax = td->td_retval[0];
  td->td_frame->tf_edx = td->td_retval[1];
  td->td_frame->tf_eflags &= ~PSL_C;
  break;

 case 128:




  td->td_frame->tf_eip -= td->td_frame->tf_err;
  break;

 case 129:
  break;

 default:
  td->td_frame->tf_eax = SV_ABI_ERRNO(td->td_proc, error);
  td->td_frame->tf_eflags |= PSL_C;
  break;
 }
}
