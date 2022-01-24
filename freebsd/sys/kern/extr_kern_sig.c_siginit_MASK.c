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
struct sigacts {int /*<<< orphan*/  ps_mtx; int /*<<< orphan*/  ps_sigignore; } ;
struct proc {struct sigacts* p_sigacts; } ;

/* Variables and functions */
 int NSIG ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int SIGCONT ; 
 int SIGPROP_IGNORE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 

void
FUNC6(struct proc *p)
{
	int i;
	struct sigacts *ps;

	FUNC0(p);
	ps = p->p_sigacts;
	FUNC3(&ps->ps_mtx);
	for (i = 1; i <= NSIG; i++) {
		if (FUNC5(i) & SIGPROP_IGNORE && i != SIGCONT) {
			FUNC2(ps->ps_sigignore, i);
		}
	}
	FUNC4(&ps->ps_mtx);
	FUNC1(p);
}