
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct thread {TYPE_1__* td_pcb; } ;
struct stack {int dummy; } ;
struct TYPE_2__ {int pcb_sp; } ;


 scalar_t__ TD_IS_RUNNING (struct thread*) ;
 scalar_t__ TD_IS_SWAPPED (struct thread*) ;
 int panic (char*) ;
 int stack_capture (struct stack*,int ) ;

void
stack_save_td(struct stack *st, struct thread *td)
{
 vm_offset_t frame;

 if (TD_IS_SWAPPED(td))
  panic("stack_save_td: swapped");
 if (TD_IS_RUNNING(td))
  panic("stack_save_td: running");

 frame = td->td_pcb->pcb_sp;
 stack_capture(st, frame);
}
