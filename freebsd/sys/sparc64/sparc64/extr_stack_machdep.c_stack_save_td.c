
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_pcb; } ;
struct stack {int dummy; } ;
struct frame {int dummy; } ;
struct TYPE_2__ {scalar_t__ pcb_sp; } ;


 scalar_t__ SPOFF ;
 scalar_t__ TD_IS_RUNNING (struct thread*) ;
 scalar_t__ TD_IS_SWAPPED (struct thread*) ;
 int panic (char*) ;
 int stack_capture (struct stack*,struct frame*) ;

void
stack_save_td(struct stack *st, struct thread *td)
{

 if (TD_IS_SWAPPED(td))
  panic("stack_save_td: swapped");
 if (TD_IS_RUNNING(td))
  panic("stack_save_td: running");

 stack_capture(st, (struct frame *)(td->td_pcb->pcb_sp + SPOFF));
}
