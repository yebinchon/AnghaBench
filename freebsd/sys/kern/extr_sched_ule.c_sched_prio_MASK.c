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
typedef  scalar_t__ u_char ;
struct thread {int td_flags; scalar_t__ td_priority; scalar_t__ td_base_pri; } ;

/* Variables and functions */
 int TDF_BORROWING ; 
 scalar_t__ FUNC0 (struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,scalar_t__) ; 

void
FUNC3(struct thread *td, u_char prio)
{
	u_char oldprio;

	/* First, update the base priority. */
	td->td_base_pri = prio;

	/*
	 * If the thread is borrowing another thread's priority, don't
	 * ever lower the priority.
	 */
	if (td->td_flags & TDF_BORROWING && td->td_priority < prio)
		return;

	/* Change the real priority. */
	oldprio = td->td_priority;
	FUNC1(td, prio);

	/*
	 * If the thread is on a turnstile, then let the turnstile update
	 * its state.
	 */
	if (FUNC0(td) && oldprio != prio)
		FUNC2(td, oldprio);
}