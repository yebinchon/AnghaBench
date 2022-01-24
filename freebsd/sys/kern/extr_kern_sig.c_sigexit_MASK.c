#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_3__* td_ucred; struct proc* td_proc; } ;
struct proc {int p_sig; TYPE_2__* p_ucred; int /*<<< orphan*/  p_comm; int /*<<< orphan*/  p_pid; int /*<<< orphan*/  p_acflag; } ;
struct TYPE_6__ {int /*<<< orphan*/  cr_uid; } ;
struct TYPE_5__ {TYPE_1__* cr_prison; } ;
struct TYPE_4__ {int /*<<< orphan*/  pr_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXSIG ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int SIGPROP_CORE ; 
 int /*<<< orphan*/  SINGLE_NO_EXIT ; 
 int WCOREFLAG ; 
 scalar_t__ FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ kern_logsigexit ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct proc*,int /*<<< orphan*/ ) ; 

void
FUNC7(struct thread *td, int sig)
{
	struct proc *p = td->td_proc;

	FUNC0(p, MA_OWNED);
	p->p_acflag |= AXSIG;
	/*
	 * We must be single-threading to generate a core dump.  This
	 * ensures that the registers in the core file are up-to-date.
	 * Also, the ELF dump handler assumes that the thread list doesn't
	 * change out from under it.
	 *
	 * XXX If another thread attempts to single-thread before us
	 *     (e.g. via fork()), we won't get a dump at all.
	 */
	if ((FUNC5(sig) & SIGPROP_CORE) &&
	    FUNC6(p, SINGLE_NO_EXIT) == 0) {
		p->p_sig = sig;
		/*
		 * Log signals which would cause core dumps
		 * (Log as LOG_INFO to appease those who don't want
		 * these messages.)
		 * XXX : Todo, as well as euid, write out ruid too
		 * Note that coredump() drops proc lock.
		 */
		if (FUNC2(td) == 0)
			sig |= WCOREFLAG;
		if (kern_logsigexit)
			FUNC4(LOG_INFO,
			    "pid %d (%s), jid %d, uid %d: exited on "
			    "signal %d%s\n", p->p_pid, p->p_comm,
			    p->p_ucred->cr_prison->pr_id,
			    td->td_ucred->cr_uid,
			    sig &~ WCOREFLAG,
			    sig & WCOREFLAG ? " (core dumped)" : "");
	} else
		FUNC1(p);
	FUNC3(td, 0, sig);
	/* NOTREACHED */
}