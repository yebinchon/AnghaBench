#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sigio {int /*<<< orphan*/  sio_ucred; struct pgrp* sio_pgrp; struct proc* sio_proc; struct sigio** sio_myref; int /*<<< orphan*/  sio_pgid; } ;
struct proc {scalar_t__ p_session; int p_flag; int /*<<< orphan*/  p_sigiolst; } ;
struct pgrp {scalar_t__ pg_session; int /*<<< orphan*/  pg_sigiolst; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_4__ {TYPE_1__* td_proc; int /*<<< orphan*/  td_ucred; } ;
struct TYPE_3__ {scalar_t__ p_session; } ;

/* Variables and functions */
 int EPERM ; 
 int ESRCH ; 
 int /*<<< orphan*/  M_SIGIO ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC1 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int P_WEXIT ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sigio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC9 (struct sigio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sigio**) ; 
 struct sigio* FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct proc* FUNC12 (int /*<<< orphan*/ ) ; 
 struct pgrp* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  sio_pgsigio ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int
FUNC16(pid_t pgid, struct sigio **sigiop)
{
	struct proc *proc;
	struct pgrp *pgrp;
	struct sigio *sigio;
	int ret;

	if (pgid == 0) {
		FUNC10(sigiop);
		return (0);
	}

	ret = 0;

	/* Allocate and fill in the new sigio out of locks. */
	sigio = FUNC11(sizeof(struct sigio), M_SIGIO, M_WAITOK);
	sigio->sio_pgid = pgid;
	sigio->sio_ucred = FUNC8(curthread->td_ucred);
	sigio->sio_myref = sigiop;

	FUNC14(&proctree_lock);
	if (pgid > 0) {
		proc = FUNC12(pgid);
		if (proc == NULL) {
			ret = ESRCH;
			goto fail;
		}

		/*
		 * Policy - Don't allow a process to FSETOWN a process
		 * in another session.
		 *
		 * Remove this test to allow maximum flexibility or
		 * restrict FSETOWN to the current process or process
		 * group for maximum safety.
		 */
		FUNC3(proc);
		if (proc->p_session != curthread->td_proc->p_session) {
			ret = EPERM;
			goto fail;
		}

		pgrp = NULL;
	} else /* if (pgid < 0) */ {
		pgrp = FUNC13(-pgid);
		if (pgrp == NULL) {
			ret = ESRCH;
			goto fail;
		}
		FUNC1(pgrp);

		/*
		 * Policy - Don't allow a process to FSETOWN a process
		 * in another session.
		 *
		 * Remove this test to allow maximum flexibility or
		 * restrict FSETOWN to the current process or process
		 * group for maximum safety.
		 */
		if (pgrp->pg_session != curthread->td_proc->p_session) {
			ret = EPERM;
			goto fail;
		}

		proc = NULL;
	}
	FUNC10(sigiop);
	if (pgid > 0) {
		FUNC2(proc);
		/*
		 * Since funsetownlst() is called without the proctree
		 * locked, we need to check for P_WEXIT.
		 * XXX: is ESRCH correct?
		 */
		if ((proc->p_flag & P_WEXIT) != 0) {
			FUNC3(proc);
			ret = ESRCH;
			goto fail;
		}
		FUNC6(&proc->p_sigiolst, sigio, sio_pgsigio);
		sigio->sio_proc = proc;
		FUNC3(proc);
	} else {
		FUNC0(pgrp);
		FUNC6(&pgrp->pg_sigiolst, sigio, sio_pgsigio);
		sigio->sio_pgrp = pgrp;
		FUNC1(pgrp);
	}
	FUNC15(&proctree_lock);
	FUNC4();
	*sigiop = sigio;
	FUNC5();
	return (0);

fail:
	FUNC15(&proctree_lock);
	FUNC7(sigio->sio_ucred);
	FUNC9(sigio, M_SIGIO);
	return (ret);
}