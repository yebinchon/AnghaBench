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
struct proc {int /*<<< orphan*/  p_mtx; int /*<<< orphan*/  p_siglist; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct proc *p)
{
	FUNC0(p);
	while (FUNC2(p->p_siglist, SIGSTOP)) {
		FUNC4(&p->p_siglist);
		FUNC3(&p->p_siglist, &p->p_mtx, PPAUSE, "kpsusp", 0);
	}
	FUNC1(p);
}