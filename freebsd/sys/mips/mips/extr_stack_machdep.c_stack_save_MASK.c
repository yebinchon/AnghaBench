#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_register_t ;
struct stack {int dummy; } ;
struct TYPE_6__ {TYPE_2__* td_pcb; } ;
struct TYPE_4__ {int /*<<< orphan*/  sp; int /*<<< orphan*/  pc; } ;
struct TYPE_5__ {TYPE_1__ pcb_regs; } ;

/* Variables and functions */
 TYPE_3__* curthread ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct stack*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct stack *st)
{
	u_register_t pc, sp;

	if (curthread == NULL)
		FUNC0("stack_save: curthread == NULL");

	pc = curthread->td_pcb->pcb_regs.pc;
	sp = curthread->td_pcb->pcb_regs.sp;
	FUNC1(st, pc, sp);
}