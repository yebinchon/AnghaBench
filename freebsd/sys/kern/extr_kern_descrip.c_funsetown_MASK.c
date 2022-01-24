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
struct sigio {scalar_t__ sio_pgid; int /*<<< orphan*/  sio_ucred; struct proc* sio_proc; struct pgrp* sio_pgrp; int /*<<< orphan*/ ** sio_myref; } ;
struct proc {int /*<<< orphan*/  p_sigiolst; } ;
struct pgrp {int /*<<< orphan*/  pg_sigiolst; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SIGIO ; 
 int /*<<< orphan*/  FUNC0 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC1 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sigio*,struct sigio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sigio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sio_pgsigio ; 

void
FUNC9(struct sigio **sigiop)
{
	struct sigio *sigio;

	if (*sigiop == NULL)
		return;
	FUNC4();
	sigio = *sigiop;
	if (sigio == NULL) {
		FUNC5();
		return;
	}
	*(sigio->sio_myref) = NULL;
	if ((sigio)->sio_pgid < 0) {
		struct pgrp *pg = (sigio)->sio_pgrp;
		FUNC0(pg);
		FUNC6(&sigio->sio_pgrp->pg_sigiolst, sigio,
			    sigio, sio_pgsigio);
		FUNC1(pg);
	} else {
		struct proc *p = (sigio)->sio_proc;
		FUNC2(p);
		FUNC6(&sigio->sio_proc->p_sigiolst, sigio,
			    sigio, sio_pgsigio);
		FUNC3(p);
	}
	FUNC5();
	FUNC7(sigio->sio_ucred);
	FUNC8(sigio, M_SIGIO);
}