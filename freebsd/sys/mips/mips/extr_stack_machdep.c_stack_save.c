
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_register_t ;
struct stack {int dummy; } ;
struct TYPE_6__ {TYPE_2__* td_pcb; } ;
struct TYPE_4__ {int sp; int pc; } ;
struct TYPE_5__ {TYPE_1__ pcb_regs; } ;


 TYPE_3__* curthread ;
 int panic (char*) ;
 int stack_capture (struct stack*,int ,int ) ;

void
stack_save(struct stack *st)
{
 u_register_t pc, sp;

 if (curthread == ((void*)0))
  panic("stack_save: curthread == NULL");

 pc = curthread->td_pcb->pcb_regs.pc;
 sp = curthread->td_pcb->pcb_regs.sp;
 stack_capture(st, pc, sp);
}
