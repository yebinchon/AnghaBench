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
struct thread {int td_flags; int /*<<< orphan*/  td_priority; } ;
struct TYPE_2__ {scalar_t__ ts_estcpu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  KTR_SCHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int TDF_NOLOAD ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 TYPE_1__* FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 

void
FUNC7(struct thread *td, struct thread *child)
{

	FUNC1(KTR_SCHED, "thread", FUNC3(child), "exit",
	    "prio:%d", child->td_priority);
	FUNC5(td);
	FUNC4(td)->ts_estcpu = FUNC0(FUNC4(td)->ts_estcpu +
	    FUNC4(child)->ts_estcpu);
	FUNC6(td);
	FUNC5(child);
	if ((child->td_flags & TDF_NOLOAD) == 0)
		FUNC2();
	FUNC6(child);
}