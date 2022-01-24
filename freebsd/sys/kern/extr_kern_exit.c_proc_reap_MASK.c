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
struct thread {struct proc* td_proc; } ;
struct proc {scalar_t__ p_state; scalar_t__ p_oppid; int /*<<< orphan*/ * p_sigacts; int /*<<< orphan*/ * p_args; TYPE_3__* p_ucred; int /*<<< orphan*/  p_rux; int /*<<< orphan*/  p_ru; int /*<<< orphan*/  p_crux; TYPE_2__* p_stats; scalar_t__ p_xsig; scalar_t__ p_xexit; int /*<<< orphan*/ * p_klist; int /*<<< orphan*/  p_pid; int /*<<< orphan*/ * p_procdesc; int /*<<< orphan*/  p_pwait; int /*<<< orphan*/  p_ksi; TYPE_1__* p_pptr; int /*<<< orphan*/  p_slock; } ;
struct TYPE_6__ {int /*<<< orphan*/  cr_ruidinfo; } ;
struct TYPE_5__ {int /*<<< orphan*/  p_cru; } ;
struct TYPE_4__ {scalar_t__ p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  KTR_PTRACE ; 
 int FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROC_ID_PID ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct proc*) ; 
 scalar_t__ PRS_ZOMBIE ; 
 int /*<<< orphan*/  RACCT_NPROC ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int WNOWAIT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct proc*) ; 
 int /*<<< orphan*/  FUNC15 (struct proc*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nprocs ; 
 int /*<<< orphan*/  p_hash ; 
 int /*<<< orphan*/  p_sibling ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct proc*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct proc* FUNC21 (struct proc*) ; 
 int /*<<< orphan*/  FUNC22 (struct proc*,struct proc*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct proc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proc_zone ; 
 int /*<<< orphan*/  FUNC24 (struct proc*) ; 
 int /*<<< orphan*/  proctree_lock ; 
 scalar_t__ racct_enable ; 
 int /*<<< orphan*/  FUNC25 (struct proc*) ; 
 int /*<<< orphan*/  FUNC26 (struct proc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (struct proc*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct proc*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (struct proc*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,struct proc*) ; 
 int /*<<< orphan*/  FUNC37 (struct proc*) ; 
 int /*<<< orphan*/  FUNC38 (struct proc*) ; 

void
FUNC39(struct thread *td, struct proc *p, int *status, int options)
{
	struct proc *q, *t;

	FUNC32(&proctree_lock, SA_XLOCKED);
	FUNC7(p, MA_OWNED);
	FUNC2(p->p_state == PRS_ZOMBIE, ("proc_reap: !PRS_ZOMBIE"));

	FUNC16(&p->p_slock);

	q = td->td_proc;

	if (status)
		*status = FUNC3(p->p_xexit, p->p_xsig);
	if (options & WNOWAIT) {
		/*
		 *  Only poll, returning the status.  Caller does not wish to
		 * release the proc struct just yet.
		 */
		FUNC8(p);
		FUNC34(&proctree_lock);
		return;
	}

	FUNC6(q);
	FUNC31(p->p_ksi);
	FUNC8(q);

	/*
	 * If we got the child via a ptrace 'attach', we need to give it back
	 * to the old parent.
	 */
	if (p->p_oppid != p->p_pptr->p_pid) {
		FUNC8(p);
		t = FUNC21(p);
		FUNC6(t);
		FUNC6(p);
		FUNC0(KTR_PTRACE,
		    "wait: traced child %d moved back to parent %d", p->p_pid,
		    t->p_pid);
		FUNC22(p, t, false);
		FUNC8(p);
		FUNC18(t, SIGCHLD, p->p_ksi);
		FUNC38(t);
		FUNC12(&p->p_pwait);
		FUNC8(t);
		FUNC34(&proctree_lock);
		return;
	}
	FUNC8(p);

	/*
	 * Remove other references to this process to ensure we have an
	 * exclusive reference.
	 */
	FUNC33(FUNC5(p->p_pid));
	FUNC4(p, p_hash);
	FUNC34(FUNC5(p->p_pid));
	FUNC4(p, p_sibling);
	FUNC27(p, true);
	FUNC28(p);
	FUNC6(p);
	FUNC19(p);
	FUNC8(p);
	FUNC14(p);
	if (p->p_procdesc != NULL)
		FUNC24(p);
	FUNC34(&proctree_lock);

	FUNC20(PROC_ID_PID, p->p_pid);

	FUNC6(p);
	FUNC13(p->p_klist);
	p->p_klist = NULL;
	FUNC8(p);

	/*
	 * Removal from allproc list and process group list paired with
	 * PROC_LOCK which was executed during that time should guarantee
	 * nothing can reach this process anymore. As such further locking
	 * is unnecessary.
	 */
	p->p_xexit = p->p_xsig = 0;		/* XXX: why? */

	FUNC6(q);
	FUNC29(&q->p_stats->p_cru, &q->p_crux, &p->p_ru, &p->p_rux);
	FUNC8(q);

	/*
	 * Decrement the count of procs running with this uid.
	 */
	(void)FUNC10(p->p_ucred->cr_ruidinfo, -1, 0);

	/*
	 * Destroy resource accounting information associated with the process.
	 */
#ifdef RACCT
	if (racct_enable) {
		PROC_LOCK(p);
		racct_sub(p, RACCT_NPROC, 1);
		PROC_UNLOCK(p);
	}
#endif
	FUNC25(p);

	/*
	 * Free credentials, arguments, and sigacts.
	 */
	FUNC11(p->p_ucred);
	FUNC23(p, NULL);
	FUNC17(p->p_args);
	p->p_args = NULL;
	FUNC30(p->p_sigacts);
	p->p_sigacts = NULL;

	/*
	 * Do any thread-system specific cleanups.
	 */
	FUNC35(p);

	/*
	 * Give vm and machine-dependent layer a chance to free anything that
	 * cpu_exit couldn't release while still running in process context.
	 */
	FUNC37(p);
#ifdef MAC
	mac_proc_destroy(p);
#endif

	FUNC2(FUNC1(p),
	    ("proc_reap: no residual thread!"));
	FUNC36(proc_zone, p);
	FUNC9(&nprocs, -1);
}