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
struct proc {struct pgrp* p_pgrp; } ;
struct pgrp {int /*<<< orphan*/  pg_members; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC3 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  p_pglist ; 
 int /*<<< orphan*/  FUNC6 (struct pgrp*) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC8(struct proc *p)
{
	struct pgrp *savepgrp;

	FUNC7(&proctree_lock, SX_XLOCKED);
	savepgrp = p->p_pgrp;
	FUNC2(savepgrp);
	FUNC4(p);
	FUNC1(p, p_pglist);
	p->p_pgrp = NULL;
	FUNC5(p);
	FUNC3(savepgrp);
	if (FUNC0(&savepgrp->pg_members))
		FUNC6(savepgrp);
	return (0);
}