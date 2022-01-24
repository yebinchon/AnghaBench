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
struct proc {int p_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*,struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct proc*,int /*<<< orphan*/ ) ; 
 struct proc* FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRI_USER ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int P_KPROC ; 
 scalar_t__ FUNC6 (struct proc*) ; 
 scalar_t__ P_STOPPED_SINGLE ; 
 int P_SYSTEM ; 
 int P_TOTAL_STOP ; 
 int P_WEXIT ; 
 int /*<<< orphan*/  SINGLE_ALLPROC ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 int /*<<< orphan*/  FUNC8 (struct proc*) ; 
 int /*<<< orphan*/  allproc ; 
 int allproc_gen ; 
 int /*<<< orphan*/  allproc_lock ; 
 struct proc* curproc ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p_list ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct proc*,int /*<<< orphan*/ ) ; 

void
FUNC13(void)
{
	struct proc *cp, *p;
	int r, gen;
	bool restart, seen_stopped, seen_exiting, stopped_some;

	cp = curproc;
allproc_loop:
	FUNC10(&allproc_lock);
	gen = allproc_gen;
	seen_exiting = seen_stopped = stopped_some = restart = false;
	FUNC3(cp, p_list);
	FUNC1(&allproc, cp, p_list);
	for (;;) {
		p = FUNC2(cp, p_list);
		if (p == NULL)
			break;
		FUNC3(cp, p_list);
		FUNC0(p, cp, p_list);
		FUNC4(p);
		if ((p->p_flag & (P_KPROC | P_SYSTEM | P_TOTAL_STOP)) != 0) {
			FUNC5(p);
			continue;
		}
		if ((p->p_flag & P_WEXIT) != 0) {
			seen_exiting = true;
			FUNC5(p);
			continue;
		}
		if (FUNC6(p) == P_STOPPED_SINGLE) {
			/*
			 * Stopped processes are tolerated when there
			 * are no other processes which might continue
			 * them.  P_STOPPED_SINGLE but not
			 * P_TOTAL_STOP process still has at least one
			 * thread running.
			 */
			seen_stopped = true;
			FUNC5(p);
			continue;
		}
		FUNC11(&allproc_lock);
		FUNC7(p);
		r = FUNC12(p, SINGLE_ALLPROC);
		if (r != 0)
			restart = true;
		else
			stopped_some = true;
		FUNC8(p);
		FUNC5(p);
		FUNC10(&allproc_lock);
	}
	/* Catch forked children we did not see in iteration. */
	if (gen != allproc_gen)
		restart = true;
	FUNC11(&allproc_lock);
	if (restart || stopped_some || seen_exiting || seen_stopped) {
		FUNC9(PRI_USER);
		goto allproc_loop;
	}
}