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
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 char* FUNC5 (int) ; 
 scalar_t__ stderr ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC6(int sched)
{
	int smin;
	int smax;

	errno = 0;

	if ( (smin = FUNC4(sched)) == -1 && errno)
		FUNC2("sched_get_priority_min");

	if ( (smax = FUNC3(sched)) == -1 && errno)
		FUNC2("sched_get_priority_max");

	if (smax - smin + 1 < 32 || smax < smin) {
		FUNC1(stderr, "Illegal priority range for %s: %d to %d\n",
		FUNC5(sched), smin, smax);
		FUNC0(-1);
	}

	if (verbose)
		FUNC1(verbose, "%12s: sched_min %2d sched_max %2d\n",
		FUNC5(sched), smin, smax);
}