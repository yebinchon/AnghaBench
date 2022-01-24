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
struct cv {scalar_t__ cv_waiters; } ;

/* Variables and functions */
 scalar_t__ CV_WAITERS_BOUND ; 
 int /*<<< orphan*/  SLEEPQ_CONDVAR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cv*) ; 
 int /*<<< orphan*/ * FUNC2 (struct cv*) ; 
 int /*<<< orphan*/  FUNC3 (struct cv*) ; 
 int FUNC4 (struct cv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(struct cv *cvp)
{
	int wakeup_swapper;

	if (cvp->cv_waiters == 0)
		return;
	wakeup_swapper = 0;
	FUNC1(cvp);
	if (cvp->cv_waiters > 0) {
		if (cvp->cv_waiters == CV_WAITERS_BOUND &&
		    FUNC2(cvp) == NULL) {
			cvp->cv_waiters = 0;
		} else {
			if (cvp->cv_waiters < CV_WAITERS_BOUND)
				cvp->cv_waiters--;
			wakeup_swapper = FUNC4(cvp, SLEEPQ_CONDVAR, 0,
			    0);
		}
	}
	FUNC3(cvp);
	if (wakeup_swapper)
		FUNC0();
}