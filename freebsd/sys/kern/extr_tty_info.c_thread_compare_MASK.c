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
struct thread {int td_flags; } ;
typedef  scalar_t__ fixpt_t ;

/* Variables and functions */
#define  BOTH 130 
#define  ONLYA 129 
#define  ONLYB 128 
 int TDF_SINTR ; 
 int FUNC0 (struct thread*) ; 
 int FUNC1 (struct thread*) ; 
 int FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 

__attribute__((used)) static int
FUNC6(struct thread *td, struct thread *td2)
{
	int runa, runb;
	int slpa, slpb;
	fixpt_t esta, estb;

	if (td == NULL)
		return (1);

	/*
	 * Fetch running stats, pctcpu usage, and interruptable flag.
	 */
	FUNC4(td);
	runa = FUNC0(td) | FUNC1(td);
	slpa = td->td_flags & TDF_SINTR;
	esta = FUNC3(td);
	FUNC5(td);
	FUNC4(td2);
	runb = FUNC0(td2) | FUNC1(td2);
	estb = FUNC3(td2);
	slpb = td2->td_flags & TDF_SINTR;
	FUNC5(td2);
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
	 * favor one sleeping in a non-interruptible sleep
	 */
	switch (FUNC2(slpa, slpb)) {
	case ONLYA:
		return (0);
	case ONLYB:
		return (1);
	case BOTH:
		break;
	}

	return (td < td2);
}