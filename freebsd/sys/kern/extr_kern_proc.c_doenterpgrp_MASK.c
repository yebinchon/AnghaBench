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
struct proc {struct pgrp* p_pgrp; int /*<<< orphan*/  p_session; } ;
struct pgrp {int /*<<< orphan*/  pg_members; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC3 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC4 (struct pgrp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct proc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC10 (struct proc*,struct pgrp*,int) ; 
 int /*<<< orphan*/  p_pglist ; 
 int /*<<< orphan*/  FUNC11 (struct pgrp*) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct proc *p, struct pgrp *pgrp)
{
	struct pgrp *savepgrp;

	FUNC12(&proctree_lock, SX_XLOCKED);
	FUNC7(p, MA_NOTOWNED);
	FUNC4(pgrp, MA_NOTOWNED);
	FUNC4(p->p_pgrp, MA_NOTOWNED);
	FUNC9(p->p_session, MA_NOTOWNED);

	savepgrp = p->p_pgrp;

	/*
	 * Adjust eligibility of affected pgrps to participate in job control.
	 * Increment eligibility counts before decrementing, otherwise we
	 * could reach 0 spuriously during the first call.
	 */
	FUNC10(p, pgrp, 1);
	FUNC10(p, p->p_pgrp, 0);

	FUNC3(pgrp);
	FUNC3(savepgrp);
	FUNC6(p);
	FUNC2(p, p_pglist);
	p->p_pgrp = pgrp;
	FUNC8(p);
	FUNC1(&pgrp->pg_members, p, p_pglist);
	FUNC5(savepgrp);
	FUNC5(pgrp);
	if (FUNC0(&savepgrp->pg_members))
		FUNC11(savepgrp);
}