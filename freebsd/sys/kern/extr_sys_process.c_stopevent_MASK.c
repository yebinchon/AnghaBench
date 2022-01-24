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
struct proc {int p_step; unsigned int p_xsig; unsigned int p_stype; int /*<<< orphan*/  p_mtx; int /*<<< orphan*/ * p_xthread; int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  KTR_PTRACE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PWAIT ; 
 unsigned int S_EXIT ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*) ; 

void
FUNC4(struct proc *p, unsigned int event, unsigned int val)
{

	FUNC1(p, MA_OWNED);
	p->p_step = 1;
	FUNC0(KTR_PTRACE, "stopevent: pid %d event %u val %u", p->p_pid, event,
	    val);
	do {
		if (event != S_EXIT)
			p->p_xsig = val;
		p->p_xthread = NULL;
		p->p_stype = event;	/* Which event caused the stop? */
		FUNC3(&p->p_stype);	/* Wake up any PIOCWAIT'ing procs */
		FUNC2(&p->p_step, &p->p_mtx, PWAIT, "stopevent", 0);
	} while (p->p_step);
}