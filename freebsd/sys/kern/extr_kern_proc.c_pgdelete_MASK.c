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
struct tty {int dummy; } ;
struct session {struct tty* s_ttyp; } ;
struct pgrp {int /*<<< orphan*/  pg_mtx; int /*<<< orphan*/  pg_id; struct session* pg_session; int /*<<< orphan*/  pg_sigiolst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pgrp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  M_PGRP ; 
 int /*<<< orphan*/  FUNC1 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC2 (struct pgrp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pgrp*) ; 
 int /*<<< orphan*/  PROC_ID_GROUP ; 
 int /*<<< orphan*/  FUNC4 (struct session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC5 (struct pgrp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pg_hash ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC9 (struct session*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tty*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty*,struct pgrp*) ; 

__attribute__((used)) static void
FUNC13(struct pgrp *pgrp)
{
	struct session *savesess;
	struct tty *tp;

	FUNC10(&proctree_lock, SX_XLOCKED);
	FUNC2(pgrp, MA_NOTOWNED);
	FUNC4(pgrp->pg_session, MA_NOTOWNED);

	/*
	 * Reset any sigio structures pointing to us as a result of
	 * F_SETOWN with our pgid.
	 */
	FUNC6(&pgrp->pg_sigiolst);

	FUNC1(pgrp);
	tp = pgrp->pg_session->s_ttyp;
	FUNC0(pgrp, pg_hash);
	savesess = pgrp->pg_session;
	FUNC3(pgrp);

	/* Remove the reference to the pgrp before deallocating it. */
	if (tp != NULL) {
		FUNC11(tp);
		FUNC12(tp, pgrp);
	}

	FUNC8(PROC_ID_GROUP, pgrp->pg_id);
	FUNC7(&pgrp->pg_mtx);
	FUNC5(pgrp, M_PGRP);
	FUNC9(savesess);
}