#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct thread {int /*<<< orphan*/  td_pcb; } ;
struct stack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct thread*) ; 
 scalar_t__ FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,struct stack*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct stack *st, struct thread *td)
{

	if (FUNC2(td))
		FUNC3("stack_save_td: swapped");
	if (FUNC1(td))
		FUNC3("stack_save_td: running");

	FUNC4(td, st, FUNC0(td->td_pcb));
}