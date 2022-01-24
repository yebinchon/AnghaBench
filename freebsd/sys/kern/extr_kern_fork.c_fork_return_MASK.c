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
struct trapframe {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct thread {int td_dbgflags; TYPE_1__ td_sa; struct proc* td_proc; } ;
struct proc {int p_flag; int p_ptevents; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_SYSRET ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int PTRACE_SCX ; 
 int P_TRACED ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  SYS_fork ; 
 int /*<<< orphan*/  S_SCX ; 
 int TDB_BORN ; 
 int TDB_CHILD ; 
 int TDB_FSTP ; 
 int TDB_SCX ; 
 int TDB_STOPATFORK ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,struct trapframe*) ; 

void
FUNC7(struct thread *td, struct trapframe *frame)
{
	struct proc *p;

	p = td->td_proc;
	if (td->td_dbgflags & TDB_STOPATFORK) {
		FUNC1(p);
		if ((p->p_flag & P_TRACED) != 0) {
			/*
			 * Inform the debugger if one is still present.
			 */
			td->td_dbgflags |= TDB_CHILD | TDB_SCX | TDB_FSTP;
			FUNC5(td, SIGSTOP, NULL);
			td->td_dbgflags &= ~(TDB_CHILD | TDB_SCX);
		} else {
			/*
			 * ... otherwise clear the request.
			 */
			td->td_dbgflags &= ~TDB_STOPATFORK;
		}
		FUNC2(p);
	} else if (p->p_flag & P_TRACED || td->td_dbgflags & TDB_BORN) {
 		/*
		 * This is the start of a new thread in a traced
		 * process.  Report a system call exit event.
		 */
		FUNC1(p);
		td->td_dbgflags |= TDB_SCX;
		FUNC3(p, S_SCX, td->td_sa.code);
		if ((p->p_ptevents & PTRACE_SCX) != 0 ||
		    (td->td_dbgflags & TDB_BORN) != 0)
			FUNC5(td, SIGTRAP, NULL);
		td->td_dbgflags &= ~(TDB_SCX | TDB_BORN);
		FUNC2(p);
	}

	FUNC6(td, frame);

#ifdef KTRACE
	if (KTRPOINT(td, KTR_SYSRET))
		ktrsysret(SYS_fork, 0, 0);
#endif
}