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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int MAXCPU ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  all_cpus ; 
 int /*<<< orphan*/  ap_boot_mtx ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int FUNC9 (int) ; 

void
FUNC10(void)
{
	int error, cpuid;
	cpuset_t cpumask;

	FUNC5(&ap_boot_mtx, "ap boot", NULL, MTX_SPIN);

	FUNC4(&all_cpus);
	FUNC6(&cpumask);

	while (!FUNC1(&cpumask)) {
		cpuid = FUNC2(&cpumask) - 1;
		FUNC0(cpuid, &cpumask);

		if (cpuid >= MAXCPU) {
			FUNC8("cpu_mp_start: ignoring AP #%d.\n", cpuid);
			continue;
		}

		if (cpuid != FUNC7()) {
			if ((error = FUNC9(cpuid)) != 0) {
				FUNC8("AP #%d failed to start: %d\n", cpuid, error);
				continue;
			}
			if (bootverbose)
				FUNC8("AP #%d started!\n", cpuid);
		}
		FUNC3(cpuid, &all_cpus);
	}
}