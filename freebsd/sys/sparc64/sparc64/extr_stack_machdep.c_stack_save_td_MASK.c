#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_1__* td_pcb; } ;
struct stack {int dummy; } ;
struct frame {int dummy; } ;
struct TYPE_2__ {scalar_t__ pcb_sp; } ;

/* Variables and functions */
 scalar_t__ SPOFF ; 
 scalar_t__ FUNC0 (struct thread*) ; 
 scalar_t__ FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct stack*,struct frame*) ; 

void
FUNC4(struct stack *st, struct thread *td)
{

	if (FUNC1(td))
		FUNC2("stack_save_td: swapped");
	if (FUNC0(td))
		FUNC2("stack_save_td: running");

	FUNC3(st, (struct frame *)(td->td_pcb->pcb_sp + SPOFF));
}