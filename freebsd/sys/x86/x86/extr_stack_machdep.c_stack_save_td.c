
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_pcb; } ;
struct stack {int dummy; } ;


 int PCB_FP (int ) ;
 scalar_t__ TD_IS_RUNNING (struct thread*) ;
 scalar_t__ TD_IS_SWAPPED (struct thread*) ;
 int panic (char*) ;
 int stack_capture (struct thread*,struct stack*,int ) ;

void
stack_save_td(struct stack *st, struct thread *td)
{

 if (TD_IS_SWAPPED(td))
  panic("stack_save_td: swapped");
 if (TD_IS_RUNNING(td))
  panic("stack_save_td: running");

 stack_capture(td, st, PCB_FP(td->td_pcb));
}
