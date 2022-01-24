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
typedef  size_t u_int ;
struct monitorbuf {int /*<<< orphan*/  stop_state; } ;

/* Variables and functions */
 int CPUID2_MON ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ MONITOR_STOPSTATE_STOPPED ; 
 int /*<<< orphan*/  MWAIT_C1 ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 struct monitorbuf* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int cpu_feature2 ; 
 int /*<<< orphan*/  FUNC8 (struct monitorbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  monitorbuf ; 
 int /*<<< orphan*/  mwait_cpustop_broken ; 
 int /*<<< orphan*/ * panicstr ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  started_cpus ; 
 scalar_t__ stop_mwait ; 
 int /*<<< orphan*/ * stoppcbs ; 
 int /*<<< orphan*/  stopped_cpus ; 

void
FUNC14(void)
{
	struct monitorbuf *mb;
	u_int cpu;
	bool use_mwait;

	cpu = FUNC3(cpuid);

	FUNC13(&stoppcbs[cpu]);

	use_mwait = (stop_mwait && (cpu_feature2 & CPUID2_MON) != 0 &&
	    !mwait_cpustop_broken);
	if (use_mwait) {
		mb = FUNC4(monitorbuf);
		FUNC7(&mb->stop_state,
		    MONITOR_STOPSTATE_STOPPED);
	}

	/* Indicate that we are stopped */
	FUNC1(cpu, &stopped_cpus);

	/* Wait for restart */
	while (!FUNC0(cpu, &started_cpus)) {
		if (use_mwait) {
			FUNC8(mb, 0, 0);
			if (FUNC6(&mb->stop_state) ==
			    MONITOR_STOPSTATE_STOPPED)
				FUNC9(0, MWAIT_C1);
			continue;
		}

		FUNC12();

		/*
		 * Halt non-BSP CPUs on panic -- we're never going to need them
		 * again, and might as well save power / release resources
		 * (e.g., overprovisioned VM infrastructure).
		 */
		while (FUNC5(!FUNC2() && panicstr != NULL))
			FUNC11();
	}

	FUNC10(cpu);
}