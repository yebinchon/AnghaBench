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
struct thread {int td_pflags; int td_dbgflags; struct proc* td_rfppwait_p; struct proc* td_proc; } ;
struct proc {int p_flag; int p_ptevents; int /*<<< orphan*/  p_mtx; int /*<<< orphan*/  p_pwait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int PTRACE_VFORK ; 
 int P_PPWAIT ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int TDB_VFORK ; 
 int TDP_RFPPWAIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 

void
FUNC7(struct thread *td)
{
	struct proc *p, *p2;

	FUNC0(td->td_pflags & TDP_RFPPWAIT);

	p = td->td_proc;
	/*
	 * Preserve synchronization semantics of vfork.  If
	 * waiting for child to exec or exit, fork set
	 * P_PPWAIT on child, and there we sleep on our proc
	 * (in case of exit).
	 *
	 * Do it after the ptracestop() above is finished, to
	 * not block our debugger until child execs or exits
	 * to finish vfork wait.
	 */
	td->td_pflags &= ~TDP_RFPPWAIT;
	p2 = td->td_rfppwait_p;
again:
	FUNC1(p2);
	while (p2->p_flag & P_PPWAIT) {
		FUNC1(p);
		if (FUNC6()) {
			FUNC2(p2);
			FUNC5(0);
			FUNC2(p);
			goto again;
		} else {
			FUNC2(p);
		}
		FUNC3(&p2->p_pwait, &p2->p_mtx, hz);
	}
	FUNC2(p2);

	if (td->td_dbgflags & TDB_VFORK) {
		FUNC1(p);
		if (p->p_ptevents & PTRACE_VFORK)
			FUNC4(td, SIGTRAP, NULL);
		td->td_dbgflags &= ~TDB_VFORK;
		FUNC2(p);
	}
}