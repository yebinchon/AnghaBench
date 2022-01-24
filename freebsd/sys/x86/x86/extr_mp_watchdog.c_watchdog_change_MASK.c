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

/* Variables and functions */
 int /*<<< orphan*/  WATCHDOG_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  watchdog_callout ; 
 int watchdog_cpu ; 
 int watchdog_dontfire ; 
 int /*<<< orphan*/  watchdog_function ; 
 int /*<<< orphan*/  watchdog_timer ; 

__attribute__((used)) static void
FUNC3(int wdcpu)
{

	if (wdcpu == -1 || wdcpu == 0xffffffff) {
		/*
		 * Disable the watchdog.
		 */
		watchdog_cpu = -1;
		watchdog_dontfire = 1;
		FUNC1(&watchdog_callout);
		FUNC2("watchdog stopped\n");
	} else {
		watchdog_timer = WATCHDOG_THRESHOLD;
		watchdog_dontfire = 0;
		watchdog_cpu = wdcpu;
		FUNC0(&watchdog_callout, 1 * hz, watchdog_function,
		    NULL);
	}
}