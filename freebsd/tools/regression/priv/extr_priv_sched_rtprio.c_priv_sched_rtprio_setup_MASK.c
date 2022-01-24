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
struct test {scalar_t__ t_test_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  UID_THIRD ; 
 scalar_t__ childproc ; 
 int childproc_running ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ priv_sched_rtprio_aproc_idle ; 
 scalar_t__ priv_sched_rtprio_aproc_normal ; 
 scalar_t__ priv_sched_rtprio_aproc_realtime ; 
 scalar_t__ priv_sched_rtprio_myproc_idle ; 
 scalar_t__ priv_sched_rtprio_myproc_normal ; 
 scalar_t__ priv_sched_rtprio_myproc_realtime ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(int asroot, int injail, struct test *test)
{
	int another_uid, need_child;

	/*
	 * Some tests require a second process with specific credentials.
	 * Set that up here, and kill in cleanup.
	 */
	need_child = 0;
	if (test->t_test_func == priv_sched_rtprio_aproc_normal ||
	    test->t_test_func == priv_sched_rtprio_aproc_idle ||
	    test->t_test_func == priv_sched_rtprio_aproc_realtime) {
		need_child = 1;
		another_uid = 1;
	}
	if (test->t_test_func == priv_sched_rtprio_myproc_normal ||
	    test->t_test_func == priv_sched_rtprio_myproc_idle ||
	    test->t_test_func == priv_sched_rtprio_myproc_realtime) {
		need_child = 1;
	}

	if (need_child) {
		childproc = FUNC1();
		if (childproc < 0) {
			FUNC4("priv_sched_setup: fork");
			return (-1);
		}
		if (childproc == 0) {
			if (another_uid) {
				if (FUNC2(UID_THIRD, UID_THIRD,
				    UID_THIRD) < 0)
				FUNC0(-1, "setresuid(%d)", UID_THIRD);
			}
			while (1)
				FUNC3(1);
		}
		childproc_running = 1;
		FUNC3(1);	/* Allow dummy thread to change uids. */
	}
	return (0);
}