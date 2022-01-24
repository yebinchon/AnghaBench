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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct procdesc {int pd_flags; TYPE_1__ pd_selinfo; int /*<<< orphan*/ * pd_proc; int /*<<< orphan*/  pd_xstat; } ;
struct proc {scalar_t__ p_pptr; scalar_t__ p_reaper; struct procdesc* p_procdesc; int /*<<< orphan*/  p_xsig; int /*<<< orphan*/  p_xexit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  NOTE_EXIT ; 
 int PDF_CLOSED ; 
 int PDF_EXITED ; 
 int PDF_SELECTED ; 
 int /*<<< orphan*/  FUNC3 (struct procdesc*) ; 
 int /*<<< orphan*/  FUNC4 (struct procdesc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  FUNC6 (struct procdesc*) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC9(struct proc *p)
{
	struct procdesc *pd;

	FUNC8(&proctree_lock, SA_XLOCKED);
	FUNC5(p, MA_OWNED);
	FUNC0(p->p_procdesc != NULL, ("procdesc_exit: p_procdesc NULL"));

	pd = p->p_procdesc;

	FUNC3(pd);
	FUNC0((pd->pd_flags & PDF_CLOSED) == 0 || p->p_pptr == p->p_reaper,
	    ("procdesc_exit: closed && parent not reaper"));

	pd->pd_flags |= PDF_EXITED;
	pd->pd_xstat = FUNC2(p->p_xexit, p->p_xsig);

	/*
	 * If the process descriptor has been closed, then we have nothing
	 * to do; return 1 so that init will get SIGCHLD and do the reaping.
	 * Clean up the procdesc now rather than letting it happen during
	 * that reap.
	 */
	if (pd->pd_flags & PDF_CLOSED) {
		FUNC4(pd);
		pd->pd_proc = NULL;
		p->p_procdesc = NULL;
		FUNC6(pd);
		return (1);
	}
	if (pd->pd_flags & PDF_SELECTED) {
		pd->pd_flags &= ~PDF_SELECTED;
		FUNC7(&pd->pd_selinfo);
	}
	FUNC1(&pd->pd_selinfo.si_note, NOTE_EXIT);
	FUNC4(pd);
	return (0);
}