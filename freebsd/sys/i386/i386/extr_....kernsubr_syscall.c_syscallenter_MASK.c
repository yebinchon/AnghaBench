#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct syscall_args {int /*<<< orphan*/  code; TYPE_2__* callp; int /*<<< orphan*/ * args; int /*<<< orphan*/  narg; } ;
struct thread {scalar_t__ td_cowgen; int td_dbgflags; int td_errno; int td_pflags; int* td_retval; struct proc* td_proc; scalar_t__ td_pticks; struct syscall_args td_sa; } ;
struct proc {scalar_t__ p_cowgen; int p_flag; int p_ptevents; TYPE_1__* p_sysent; int /*<<< orphan*/  p_pid; } ;
struct TYPE_5__ {int sy_flags; scalar_t__ sy_entry; int (* sy_call ) (struct thread*,int /*<<< orphan*/ *) ;scalar_t__ sy_return; } ;
struct TYPE_4__ {int (* sv_fetch_syscall_args ) (struct thread*) ;int /*<<< orphan*/  (* sv_set_syscall_retval ) (struct thread*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct thread*) ; 
 int ECAPMODE ; 
 scalar_t__ FUNC2 (struct thread*) ; 
 scalar_t__ FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,uintptr_t,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,uintptr_t,char*,int /*<<< orphan*/ ,char*,int,char*,int,char*,int) ; 
 int /*<<< orphan*/  KTR_SYSC ; 
 int /*<<< orphan*/  KTR_SYSCALL ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 int PTRACE_SCE ; 
 int P_TRACED ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  FUNC8 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SYF_CAPENABLED ; 
 int /*<<< orphan*/  SYSTRACE_ENTRY ; 
 int /*<<< orphan*/  SYSTRACE_RETURN ; 
 int /*<<< orphan*/  S_SCE ; 
 int TDB_SCE ; 
 int TDB_USERWR ; 
 int TDP_NERRNO ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct thread*) ; 
 int FUNC14 (struct thread*) ; 
 int /*<<< orphan*/  FUNC15 (struct syscall_args*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct syscall_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct thread*,int) ; 
 int FUNC19 (struct thread*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (struct thread*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (struct proc*,int /*<<< orphan*/ ) ; 
 scalar_t__ systrace_enabled ; 
 int /*<<< orphan*/  FUNC22 (struct syscall_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct thread*) ; 
 int /*<<< orphan*/  v_syscall ; 

__attribute__((used)) static inline void
FUNC24(struct thread *td)
{
	struct proc *p;
	struct syscall_args *sa;
	int error, traced;

	FUNC9(v_syscall);
	p = td->td_proc;
	sa = &td->td_sa;

	td->td_pticks = 0;
	if (FUNC10(td->td_cowgen != p->p_cowgen))
		FUNC23(td);
	traced = (p->p_flag & P_TRACED) != 0;
	if (traced || td->td_dbgflags & TDB_USERWR) {
		FUNC6(p);
		td->td_dbgflags &= ~TDB_USERWR;
		if (traced)
			td->td_dbgflags |= TDB_SCE;
		FUNC7(p);
	}
	error = (p->p_sysent->sv_fetch_syscall_args)(td);
#ifdef KTRACE
	if (KTRPOINT(td, KTR_SYSCALL))
		ktrsyscall(sa->code, sa->narg, sa->args);
#endif
	FUNC4(KTR_SYSC, "syscall", FUNC21(p, sa->code),
	    (uintptr_t)td, "pid:%d", td->td_proc->p_pid, "arg0:%p", sa->args[0],
	    "arg1:%p", sa->args[1], "arg2:%p", sa->args[2]);

	if (error != 0) {
		td->td_errno = error;
		goto retval;
	}

	FUNC8(p, S_SCE, sa->narg);
	if ((p->p_flag & P_TRACED) != 0) {
		FUNC6(p);
		if (p->p_ptevents & PTRACE_SCE)
			FUNC12((td), SIGTRAP, NULL);
		FUNC7(p);
	}
	if ((td->td_dbgflags & TDB_USERWR) != 0) {
		/*
		 * Reread syscall number and arguments if debugger
		 * modified registers or memory.
		 */
		error = (p->p_sysent->sv_fetch_syscall_args)(td);
#ifdef KTRACE
		if (KTRPOINT(td, KTR_SYSCALL))
			ktrsyscall(sa->code, sa->narg, sa->args);
#endif
		if (error != 0) {
			td->td_errno = error;
			goto retval;
		}
	}

#ifdef CAPABILITY_MODE
	/*
	 * In capability mode, we only allow access to system calls
	 * flagged with SYF_CAPENABLED.
	 */
	if (IN_CAPABILITY_MODE(td) &&
	    !(sa->callp->sy_flags & SYF_CAPENABLED)) {
		td->td_errno = error = ECAPMODE;
		goto retval;
	}
#endif

	error = FUNC19(td, sa->callp);
	if (error != 0) {
		td->td_errno = error;
		goto retval;
	}

#ifdef KDTRACE_HOOKS
	/* Give the syscall:::entry DTrace probe a chance to fire. */
	if (__predict_false(systrace_enabled && sa->callp->sy_entry != 0))
		(*systrace_probe_func)(sa, SYSTRACE_ENTRY, 0);
#endif

	/* Let system calls set td_errno directly. */
	td->td_pflags &= ~TDP_NERRNO;

	FUNC0(sa->code, td);
	error = (sa->callp->sy_call)(td, sa->args);
	FUNC1(error, td);

	/* Save the latest error return value. */
	if ((td->td_pflags & TDP_NERRNO) == 0)
		td->td_errno = error;

#ifdef KDTRACE_HOOKS
	/* Give the syscall:::return DTrace probe a chance to fire. */
	if (__predict_false(systrace_enabled && sa->callp->sy_return != 0))
		(*systrace_probe_func)(sa, SYSTRACE_RETURN,
		    error ? -1 : td->td_retval[0]);
#endif
	FUNC20(td, sa->callp);

 retval:
	FUNC5(KTR_SYSC, "syscall", FUNC21(p, sa->code),
	    (uintptr_t)td, "pid:%d", td->td_proc->p_pid, "error:%d", error,
	    "retval0:%#lx", td->td_retval[0], "retval1:%#lx",
	    td->td_retval[1]);
	if (traced) {
		FUNC6(p);
		td->td_dbgflags &= ~TDB_SCE;
		FUNC7(p);
	}
	(p->p_sysent->sv_set_syscall_retval)(td, error);
}