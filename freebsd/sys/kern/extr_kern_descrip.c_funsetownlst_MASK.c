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
struct sigiolst {int dummy; } ;
struct sigio {scalar_t__ sio_pgid; int /*<<< orphan*/  sio_ucred; struct proc* sio_proc; struct pgrp* sio_pgrp; int /*<<< orphan*/ ** sio_myref; } ;
struct proc {int /*<<< orphan*/  p_sigiolst; } ;
struct pgrp {int /*<<< orphan*/  pg_sigiolst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  M_SIGIO ; 
 int /*<<< orphan*/  FUNC1 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC2 (struct pgrp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct sigio* FUNC9 (struct sigiolst*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct sigio*,struct sigio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sigio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sio_pgsigio ; 

void
FUNC13(struct sigiolst *sigiolst)
{
	struct proc *p;
	struct pgrp *pg;
	struct sigio *sigio;

	sigio = FUNC9(sigiolst);
	if (sigio == NULL)
		return;
	p = NULL;
	pg = NULL;

	/*
	 * Every entry of the list should belong
	 * to a single proc or pgrp.
	 */
	if (sigio->sio_pgid < 0) {
		pg = sigio->sio_pgrp;
		FUNC2(pg, MA_NOTOWNED);
	} else /* if (sigio->sio_pgid > 0) */ {
		p = sigio->sio_proc;
		FUNC5(p, MA_NOTOWNED);
	}

	FUNC7();
	while ((sigio = FUNC9(sigiolst)) != NULL) {
		*(sigio->sio_myref) = NULL;
		if (pg != NULL) {
			FUNC0(sigio->sio_pgid < 0,
			    ("Proc sigio in pgrp sigio list"));
			FUNC0(sigio->sio_pgrp == pg,
			    ("Bogus pgrp in sigio list"));
			FUNC1(pg);
			FUNC10(&pg->pg_sigiolst, sigio, sigio,
			    sio_pgsigio);
			FUNC3(pg);
		} else /* if (p != NULL) */ {
			FUNC0(sigio->sio_pgid > 0,
			    ("Pgrp sigio in proc sigio list"));
			FUNC0(sigio->sio_proc == p,
			    ("Bogus proc in sigio list"));
			FUNC4(p);
			FUNC10(&p->p_sigiolst, sigio, sigio,
			    sio_pgsigio);
			FUNC6(p);
		}
		FUNC8();
		FUNC11(sigio->sio_ucred);
		FUNC12(sigio, M_SIGIO);
		FUNC7();
	}
	FUNC8();
}