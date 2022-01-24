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
struct thread {int /*<<< orphan*/  td_priority; } ;
struct TYPE_2__ {scalar_t__ ts_runtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  KTR_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 TYPE_1__* FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 

void
FUNC7(struct thread *td, struct thread *child)
{

	FUNC0(KTR_SCHED, "thread", FUNC3(child), "thread exit",
	    "prio:%d", child->td_priority);
	/*
	 * Give the child's runtime to the parent without returning the
	 * sleep time as a penalty to the parent.  This causes shells that
	 * launch expensive things to mark their children as expensive.
	 */
	FUNC5(td);
	FUNC4(td)->ts_runtime += FUNC4(child)->ts_runtime;
	FUNC1(td);
	FUNC2(td);
	FUNC6(td);
}