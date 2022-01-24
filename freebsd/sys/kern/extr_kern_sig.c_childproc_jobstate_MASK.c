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
struct sigacts {int ps_flag; int /*<<< orphan*/  ps_mtx; } ;
struct proc {struct sigacts* p_sigacts; struct proc* p_pptr; int /*<<< orphan*/  p_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int PS_NOCLDSTOP ; 
 int /*<<< orphan*/  P_STATCHILD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 

__attribute__((used)) static void
FUNC5(struct proc *p, int reason, int sig)
{
	struct sigacts *ps;

	FUNC0(p, MA_OWNED);
	FUNC0(p->p_pptr, MA_OWNED);

	/*
	 * Wake up parent sleeping in kern_wait(), also send
	 * SIGCHLD to parent, but SIGCHLD does not guarantee
	 * that parent will awake, because parent may masked
	 * the signal.
	 */
	p->p_pptr->p_flag |= P_STATCHILD;
	FUNC4(p->p_pptr);

	ps = p->p_pptr->p_sigacts;
	FUNC1(&ps->ps_mtx);
	if ((ps->ps_flag & PS_NOCLDSTOP) == 0) {
		FUNC2(&ps->ps_mtx);
		FUNC3(p, reason, sig);
	} else
		FUNC2(&ps->ps_mtx);
}