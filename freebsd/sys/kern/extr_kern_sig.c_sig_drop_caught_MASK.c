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
struct sigacts {int /*<<< orphan*/  ps_sigcatch; int /*<<< orphan*/  ps_mtx; } ;
struct proc {struct sigacts* p_sigacts; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int SIGPROP_IGNORE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sigacts*,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*,int) ; 

void
FUNC7(struct proc *p)
{
	int sig;
	struct sigacts *ps;

	ps = p->p_sigacts;
	FUNC0(p, MA_OWNED);
	FUNC2(&ps->ps_mtx, MA_OWNED);
	while (FUNC1(ps->ps_sigcatch)) {
		sig = FUNC3(&ps->ps_sigcatch);
		FUNC4(ps, sig);
		if ((FUNC5(sig) & SIGPROP_IGNORE) != 0)
			FUNC6(p, sig);
	}
}