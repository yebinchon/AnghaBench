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
 int /*<<< orphan*/  CLOCK_UPTIME ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ live ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uptime ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8(int fibnum, int af)
{
	size_t intsize;
	int numfibs;

	if (live == 0)
		return;

	intsize = sizeof(int);
	if (fibnum == -1 &&
	    FUNC4("net.my_fibnum", &fibnum, &intsize, NULL, 0) == -1)
		fibnum = 0;
	if (FUNC4("net.fibs", &numfibs, &intsize, NULL, 0) == -1)
		numfibs = 1;
	if (fibnum < 0 || fibnum > numfibs - 1)
		FUNC2(EX_USAGE, "%d: invalid fib", fibnum);
	/*
	 * Since kernel & userland use different timebase
	 * (time_uptime vs time_second) and we are reading kernel memory
	 * directly we should do rt_expire --> expire_time conversion.
	 */
	if (FUNC0(CLOCK_UPTIME, &uptime) < 0)
		FUNC1(EX_OSERR, "clock_gettime() failed");

	FUNC7("route-information");
	FUNC6("{T:Routing tables}");
	if (fibnum)
		FUNC6(" ({L:fib}: {:fib/%d})", fibnum);
	FUNC6("\n");
	FUNC3(fibnum, af);
	FUNC5("route-information");
}