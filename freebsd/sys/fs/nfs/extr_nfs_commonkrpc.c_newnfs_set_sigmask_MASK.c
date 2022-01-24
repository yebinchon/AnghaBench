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
struct thread {int /*<<< orphan*/  td_sigmask; struct proc* td_proc; } ;
struct proc {TYPE_1__* p_sigacts; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_2__ {int /*<<< orphan*/  ps_mtx; int /*<<< orphan*/  ps_sigignore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGPROCMASK_PROC_LOCKED ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * newnfs_sig_set ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(struct thread *td, sigset_t *oldset)
{
	sigset_t newset;
	int i;
	struct proc *p;
	
	FUNC3(newset);
	if (td == NULL)
		td = curthread; /* XXX */
	p = td->td_proc;
	/* Remove the NFS set of signals from newset */
	FUNC0(p);
	FUNC6(&p->p_sigacts->ps_mtx);
	for (i = 0 ; i < FUNC8(newnfs_sig_set); i++) {
		/*
		 * But make sure we leave the ones already masked
		 * by the process, ie. remove the signal from the
		 * temporary signalmask only if it wasn't already
		 * in p_sigmask.
		 */
		if (!FUNC4(td->td_sigmask, newnfs_sig_set[i]) &&
		    !FUNC4(p->p_sigacts->ps_sigignore, newnfs_sig_set[i]))
			FUNC2(newset, newnfs_sig_set[i]);
	}
	FUNC7(&p->p_sigacts->ps_mtx);
	FUNC5(td, SIG_SETMASK, &newset, oldset,
	    SIGPROCMASK_PROC_LOCKED);
	FUNC1(p);
}