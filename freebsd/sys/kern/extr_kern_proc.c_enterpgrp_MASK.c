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
struct session {scalar_t__ s_sid; int /*<<< orphan*/  s_login; int /*<<< orphan*/ * s_ttyp; int /*<<< orphan*/ * s_ttydp; int /*<<< orphan*/ * s_ttyvp; int /*<<< orphan*/  s_count; struct proc* s_leader; int /*<<< orphan*/  s_mtx; } ;
struct proc {scalar_t__ p_pid; struct session* p_session; int /*<<< orphan*/  p_flag; } ;
struct pgrp {int /*<<< orphan*/  pg_sigiolst; scalar_t__ pg_jobc; int /*<<< orphan*/  pg_members; scalar_t__ pg_id; struct session* pg_session; int /*<<< orphan*/  pg_mtx; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pgrp*,int /*<<< orphan*/ ) ; 
 int MTX_DEF ; 
 int MTX_DUPOK ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC5 (struct pgrp*) ; 
 int /*<<< orphan*/  PROC_ID_GROUP ; 
 int /*<<< orphan*/  PROC_ID_SESSION ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 int /*<<< orphan*/  P_CONTROLT ; 
 int /*<<< orphan*/  FUNC8 (struct proc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct proc* curproc ; 
 int /*<<< orphan*/  FUNC11 (struct proc*,struct pgrp*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pg_hash ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (struct session*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC18(struct proc *p, pid_t pgid, struct pgrp *pgrp, struct session *sess)
{

	FUNC17(&proctree_lock, SX_XLOCKED);

	FUNC0(pgrp != NULL, ("enterpgrp: pgrp == NULL"));
	FUNC0(p->p_pid == pgid,
	    ("enterpgrp: new pgrp and pid != pgid"));
	FUNC0(FUNC13(pgid) == NULL,
	    ("enterpgrp: pgrp with pgid exists"));
	FUNC0(!FUNC8(p),
	    ("enterpgrp: session leader attempted setpgrp"));

	FUNC12(&pgrp->pg_mtx, "process group", NULL, MTX_DEF | MTX_DUPOK);

	if (sess != NULL) {
		/*
		 * new session
		 */
		FUNC12(&sess->s_mtx, "session", NULL, MTX_DEF);
		FUNC6(p);
		p->p_flag &= ~P_CONTROLT;
		FUNC7(p);
		FUNC4(pgrp);
		sess->s_leader = p;
		sess->s_sid = p->p_pid;
		FUNC14(PROC_ID_SESSION, p->p_pid);
		FUNC15(&sess->s_count, 1);
		sess->s_ttyvp = NULL;
		sess->s_ttydp = NULL;
		sess->s_ttyp = NULL;
		FUNC10(p->p_session->s_login, sess->s_login,
			    sizeof(sess->s_login));
		pgrp->pg_session = sess;
		FUNC0(p == curproc,
		    ("enterpgrp: mksession and p != curproc"));
	} else {
		pgrp->pg_session = p->p_session;
		FUNC16(pgrp->pg_session);
		FUNC4(pgrp);
	}
	pgrp->pg_id = pgid;
	FUNC14(PROC_ID_GROUP, p->p_pid);
	FUNC1(&pgrp->pg_members);

	/*
	 * As we have an exclusive lock of proctree_lock,
	 * this should not deadlock.
	 */
	FUNC2(FUNC3(pgid), pgrp, pg_hash);
	pgrp->pg_jobc = 0;
	FUNC9(&pgrp->pg_sigiolst);
	FUNC5(pgrp);

	FUNC11(p, pgrp);

	return (0);
}