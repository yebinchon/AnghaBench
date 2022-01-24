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
struct thread {char* td_name; int /*<<< orphan*/  td_pflags; struct proc* td_proc; } ;
struct proc {scalar_t__ p_state; int p_pid; int p_flag; TYPE_1__* p_sysent; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sv_schedtail ) (struct thread*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct thread*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  KTR_PROC ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 struct thread* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ PRS_NORMAL ; 
 int P_KPROC ; 
 int /*<<< orphan*/  TDP_FORKING ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  deadthread ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*) ; 
 int /*<<< orphan*/  FUNC11 (struct thread*) ; 

void
FUNC12(void (*callout)(void *, struct trapframe *), void *arg,
    struct trapframe *frame)
{
	struct proc *p;
	struct thread *td;
	struct thread *dtd;

	td = curthread;
	p = td->td_proc;
	FUNC1(p->p_state == PRS_NORMAL, ("executing process is still new"));

	FUNC0(KTR_PROC, "fork_exit: new thread %p (td_sched %p, pid %d, %s)",
	    td, FUNC9(td), p->p_pid, td->td_name);

	FUNC7(td);
	/*
	* Processes normally resume in mi_switch() after being
	* cpu_switch()'ed to, but when children start up they arrive here
	* instead, so we must do much the same things as mi_switch() would.
	*/
	if ((dtd = FUNC2(deadthread))) {
		FUNC3(deadthread, NULL);
		FUNC10(dtd);
	}
	FUNC11(td);

	/*
	 * cpu_fork_kthread_handler intercepts this function call to
	 * have this call a non-return function to stay in kernel mode.
	 * initproc has its own fork handler, but it does return.
	 */
	FUNC1(callout != NULL, ("NULL callout in fork_exit"));
	callout(arg, frame);

	/*
	 * Check if a kernel thread misbehaved and returned from its main
	 * function.
	 */
	if (p->p_flag & P_KPROC) {
		FUNC6("Kernel thread \"%s\" (pid %d) exited prematurely.\n",
		    td->td_name, p->p_pid);
		FUNC4();
	}
	FUNC5(&Giant, MA_NOTOWNED);

	if (p->p_sysent->sv_schedtail != NULL)
		(p->p_sysent->sv_schedtail)(td);
	td->td_pflags &= ~TDP_FORKING;
}