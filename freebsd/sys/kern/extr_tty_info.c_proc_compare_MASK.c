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
struct proc {scalar_t__ p_state; scalar_t__ p_pid; } ;
typedef  scalar_t__ fixpt_t ;

/* Variables and functions */
#define  BOTH 130 
#define  ONLYA 129 
#define  ONLYB 128 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 scalar_t__ PRS_ZOMBIE ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (struct proc*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC4(struct proc *p1, struct proc *p2)
{

	int runa, runb;
	fixpt_t esta, estb;

	if (p1 == NULL)
		return (1);

	/*
	 * Fetch various stats about these processes.  After we drop the
	 * lock the information could be stale but the race is unimportant.
	 */
	FUNC0(p1);
	runa = FUNC3(p1, &esta);
	FUNC1(p1);
	FUNC0(p2);
	runb = FUNC3(p2, &estb);
	FUNC1(p2);

	/*
	 * see if at least one of them is runnable
	 */
	switch (FUNC2(runa, runb)) {
	case ONLYA:
		return (0);
	case ONLYB:
		return (1);
	case BOTH:
		break;
	}
	/*
	 *  favor one with highest recent cpu utilization
	 */
	if (estb > esta)
		return (1);
	if (esta > estb)
		return (0);
	/*
	 * weed out zombies
	 */
	switch (FUNC2(p1->p_state == PRS_ZOMBIE, p2->p_state == PRS_ZOMBIE)) {
	case ONLYA:
		return (1);
	case ONLYB:
		return (0);
	case BOTH:
		break;
	}

	return (p2->p_pid > p1->p_pid);		/* tie - return highest pid */
}