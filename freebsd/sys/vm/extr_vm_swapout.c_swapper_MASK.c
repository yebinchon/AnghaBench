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
struct proc {scalar_t__ p_state; int p_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 scalar_t__ PRS_NORMAL ; 
 int /*<<< orphan*/  PVM ; 
 int P_INMEM ; 
 int P_SWAPPINGIN ; 
 int P_SWAPPINGOUT ; 
 int /*<<< orphan*/  SWAPIN_INTERVAL ; 
 int /*<<< orphan*/  allproc_lock ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  proc0 ; 
 struct proc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC8(void)
{
	struct proc *p;

	for (;;) {
		FUNC5(&allproc_lock);
		p = FUNC3(FUNC4());
		FUNC6(&allproc_lock);

		if (p == NULL) {
			FUNC7(&proc0, PVM, "swapin", SWAPIN_INTERVAL);
		} else {
			FUNC0(p, MA_OWNED);

			/*
			 * Another process may be bringing or may have
			 * already brought this process in while we
			 * traverse all threads.  Or, this process may
			 * have exited or even being swapped out
			 * again.
			 */
			if (p->p_state == PRS_NORMAL && (p->p_flag & (P_INMEM |
			    P_SWAPPINGOUT | P_SWAPPINGIN)) == 0) {
				FUNC2(p);
			}
			FUNC1(p);
		}
	}
}