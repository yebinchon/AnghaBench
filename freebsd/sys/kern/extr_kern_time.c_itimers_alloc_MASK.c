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
struct proc {struct itimers* p_itimers; } ;
struct itimers {int /*<<< orphan*/ ** its_timers; int /*<<< orphan*/  its_worklist; int /*<<< orphan*/  its_prof; int /*<<< orphan*/  its_virtual; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_SUBPROC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int TIMER_MAX ; 
 int /*<<< orphan*/  FUNC4 (struct itimers*,int /*<<< orphan*/ ) ; 
 struct itimers* FUNC5 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct proc *p)
{
	struct itimers *its;
	int i;

	its = FUNC5(sizeof (struct itimers), M_SUBPROC, M_WAITOK | M_ZERO);
	FUNC0(&its->its_virtual);
	FUNC0(&its->its_prof);
	FUNC3(&its->its_worklist);
	for (i = 0; i < TIMER_MAX; i++)
		its->its_timers[i] = NULL;
	FUNC1(p);
	if (p->p_itimers == NULL) {
		p->p_itimers = its;
		FUNC2(p);
	}
	else {
		FUNC2(p);
		FUNC4(its, M_SUBPROC);
	}
}