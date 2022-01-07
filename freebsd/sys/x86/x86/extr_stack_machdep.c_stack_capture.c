
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* x86_frame_t ;
typedef scalar_t__ vm_offset_t ;
struct thread {scalar_t__ td_kstack; int td_kstack_pages; } ;
struct stack {int dummy; } ;
typedef scalar_t__ register_t ;
struct TYPE_2__ {scalar_t__ f_retaddr; struct TYPE_2__* f_frame; } ;


 int INKERNEL (scalar_t__) ;
 int PAGE_SIZE ;
 int stack_put (struct stack*,scalar_t__) ;
 int stack_zero (struct stack*) ;

__attribute__((used)) static void
stack_capture(struct thread *td, struct stack *st, register_t fp)
{
 x86_frame_t frame;
 vm_offset_t callpc;

 stack_zero(st);
 frame = (x86_frame_t)fp;
 while (1) {
  if ((vm_offset_t)frame < td->td_kstack ||
      (vm_offset_t)frame >= td->td_kstack +
      td->td_kstack_pages * PAGE_SIZE)
   break;
  callpc = frame->f_retaddr;
  if (!INKERNEL(callpc))
   break;
  if (stack_put(st, callpc) == -1)
   break;
  if (frame->f_frame <= frame)
   break;
  frame = frame->f_frame;
 }
}
