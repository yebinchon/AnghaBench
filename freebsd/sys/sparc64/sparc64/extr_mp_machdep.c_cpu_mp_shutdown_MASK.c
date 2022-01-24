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
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_cpus ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  shutdown_cpus ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stopped_cpus ; 

void
FUNC9(void)
{
	cpuset_t cpus;
	int i;

	FUNC5();
	shutdown_cpus = all_cpus;
	FUNC0(FUNC4(cpuid), &shutdown_cpus);
	cpus = shutdown_cpus;

	/* XXX: Stop all the CPUs which aren't already. */
	if (FUNC1(&stopped_cpus, &cpus)) {

		/* cpus is just a flat "on" mask without curcpu. */
		FUNC3(&cpus, &stopped_cpus);
		FUNC8(cpus);
	}
	i = 0;
	while (!FUNC2(&shutdown_cpus)) {
		if (i++ > 100000) {
			FUNC7("timeout shutting down CPUs.\n");
			break;
		}
	}
	FUNC6();
}