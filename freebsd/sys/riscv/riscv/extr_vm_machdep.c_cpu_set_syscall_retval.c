
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int* tf_a; int* tf_t; int tf_sepc; } ;
struct thread {int* td_retval; struct trapframe* td_frame; } ;





void
cpu_set_syscall_retval(struct thread *td, int error)
{
 struct trapframe *frame;

 frame = td->td_frame;

 switch (error) {
 case 0:
  frame->tf_a[0] = td->td_retval[0];
  frame->tf_a[1] = td->td_retval[1];
  frame->tf_t[0] = 0;
  break;
 case 128:
  frame->tf_sepc -= 4;
  break;
 case 129:
  break;
 default:
  frame->tf_a[0] = error;
  frame->tf_t[0] = 1;
  break;
 }
}
