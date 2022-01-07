
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_register_t ;
struct thread {TYPE_2__* td_pcb; } ;
struct stack {int dummy; } ;
struct TYPE_3__ {int sp; int pc; } ;
struct TYPE_4__ {TYPE_1__ pcb_regs; } ;


 scalar_t__ TD_IS_RUNNING (struct thread*) ;
 scalar_t__ TD_IS_SWAPPED (struct thread*) ;
 int panic (char*) ;
 int stack_capture (struct stack*,int ,int ) ;

void
stack_save_td(struct stack *st, struct thread *td)
{
 u_register_t pc, sp;

 if (TD_IS_SWAPPED(td))
  panic("stack_save_td: swapped");
 if (TD_IS_RUNNING(td))
  panic("stack_save_td: running");

 pc = td->td_pcb->pcb_regs.pc;
 sp = td->td_pcb->pcb_regs.sp;
 stack_capture(st, pc, sp);
}
