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
typedef  scalar_t__ uint64_t ;
struct rusage {int /*<<< orphan*/  ru_stime; int /*<<< orphan*/  ru_utime; } ;
struct thread {int /*<<< orphan*/  td_rux; struct rusage td_ru; int /*<<< orphan*/  td_incruntime; int /*<<< orphan*/  td_runtime; struct proc* td_proc; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC6 (struct proc*,struct thread*) ; 
 int /*<<< orphan*/  switchtime ; 

void
FUNC7(struct thread *td, struct rusage *ru)
{
	struct proc *p;
	uint64_t runtime, u;

	p = td->td_proc;
	FUNC2(p, MA_OWNED);
	FUNC3(td, MA_OWNED);
	/*
	 * If we are getting stats for the current thread, then add in the
	 * stats that this thread has accumulated in its current time slice.
	 * We reset the thread and CPU state as if we had performed a context
	 * switch right here.
	 */
	if (td == curthread) {
		u = FUNC5();
		runtime = u - FUNC0(switchtime);
		td->td_runtime += runtime;
		td->td_incruntime += runtime;
		FUNC1(switchtime, u);
	}
	FUNC6(p, td);
	*ru = td->td_ru;
	FUNC4(p, &td->td_rux, &ru->ru_utime, &ru->ru_stime);
}