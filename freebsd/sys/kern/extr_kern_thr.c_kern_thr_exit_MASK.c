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
struct thread {int /*<<< orphan*/  td_dbgflags; struct proc* td_proc; } ;
struct proc {int p_numthreads; int p_pendingexits; int p_ptevents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int PTRACE_LWP ; 
 int /*<<< orphan*/  RACCT_NTHR ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  TDB_EXIT ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct proc*) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*) ; 

int
FUNC11(struct thread *td)
{
	struct proc *p;

	p = td->td_proc;

	/*
	 * If all of the threads in a process call this routine to
	 * exit (e.g. all threads call pthread_exit()), exactly one
	 * thread should return to the caller to terminate the process
	 * instead of the thread.
	 *
	 * Checking p_numthreads alone is not sufficient since threads
	 * might be committed to terminating while the PROC_LOCK is
	 * dropped in either ptracestop() or while removing this thread
	 * from the tidhash.  Instead, the p_pendingexits field holds
	 * the count of threads in either of those states and a thread
	 * is considered the "last" thread if all of the other threads
	 * in a process are already terminating.
	 */
	FUNC2(p);
	if (p->p_numthreads == p->p_pendingexits + 1) {
		/*
		 * Ignore attempts to shut down last thread in the
		 * proc.  This will actually call _exit(2) in the
		 * usermode trampoline when it returns.
		 */
		FUNC4(p);
		return (0);
	}

	p->p_pendingexits++;
	td->td_dbgflags |= TDB_EXIT;
	if (p->p_ptevents & PTRACE_LWP)
		FUNC5(td, SIGTRAP, NULL);
	FUNC4(p);
	FUNC10(td);
	FUNC2(p);
	p->p_pendingexits--;

	/*
	 * The check above should prevent all other threads from this
	 * process from exiting while the PROC_LOCK is dropped, so
	 * there must be at least one other thread other than the
	 * current thread.
	 */
	FUNC1(p->p_numthreads > 1, ("too few threads"));
	FUNC6(p, RACCT_NTHR, 1);
	FUNC7(td);

#ifdef AUDIT
	AUDIT_SYSCALL_EXIT(0, td);
#endif

	FUNC3(p);
	FUNC9(p);
	FUNC8();
	/* NOTREACHED */
}