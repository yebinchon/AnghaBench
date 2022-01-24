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
struct proc {int p_xexit; int /*<<< orphan*/  p_xsig; } ;

/* Variables and functions */
 int CLD_DUMPED ; 
 int CLD_EXITED ; 
 int CLD_KILLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int,int) ; 

void
FUNC4(struct proc *p)
{
	int reason, status;

	if (FUNC0(p->p_xsig)) {
		reason = CLD_DUMPED;
		status = FUNC2(p->p_xsig);
	} else if (FUNC1(p->p_xsig)) {
		reason = CLD_KILLED;
		status = FUNC2(p->p_xsig);
	} else {
		reason = CLD_EXITED;
		status = p->p_xexit;
	}
	/*
	 * XXX avoid calling wakeup(p->p_pptr), the work is
	 * done in exit1().
	 */
	FUNC3(p, reason, status);
}