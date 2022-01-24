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
 int /*<<< orphan*/  SLEEPQ_CONDVAR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct cv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cv*) ; 
 int /*<<< orphan*/  FUNC3 (struct cv*) ; 

void
FUNC4(struct cv *cvp, int pri)
{
	int wakeup_swapper;

	if (cvp->cv_waiters == 0)
		return;
	/*
	 * XXX sleepq_broadcast pri argument changed from -1 meaning
	 * no pri to 0 meaning no pri.
	 */
	wakeup_swapper = 0;
	if (pri == -1)
		pri = 0;
	FUNC2(cvp);
	if (cvp->cv_waiters > 0) {
		cvp->cv_waiters = 0;
		wakeup_swapper = FUNC1(cvp, SLEEPQ_CONDVAR, pri, 0);
	}
	FUNC3(cvp);
	if (wakeup_swapper)
		FUNC0();
}