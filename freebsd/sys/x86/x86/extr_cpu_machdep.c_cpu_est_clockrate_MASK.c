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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int CPUID_TSC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MSR_APERF ; 
 int /*<<< orphan*/  MSR_MPERF ; 
 int cpu_feature ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int smp_cpus ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ tsc_is_invariant ; 
 int /*<<< orphan*/  tsc_perf_stat ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(int cpu_id, uint64_t *rate)
{
	uint64_t tsc1, tsc2;
	uint64_t acnt, mcnt, perf;
	register_t reg;

	if (FUNC3(cpu_id) == NULL || rate == NULL)
		return (EINVAL);
#ifdef __i386__
	if ((cpu_feature & CPUID_TSC) == 0)
		return (EOPNOTSUPP);
#endif

	/*
	 * If TSC is P-state invariant and APERF/MPERF MSRs do not exist,
	 * DELAY(9) based logic fails.
	 */
	if (tsc_is_invariant && !tsc_perf_stat)
		return (EOPNOTSUPP);

#ifdef SMP
	if (smp_cpus > 1) {
		/* Schedule ourselves on the indicated cpu. */
		thread_lock(curthread);
		sched_bind(curthread, cpu_id);
		thread_unlock(curthread);
	}
#endif

	/* Calibrate by measuring a short delay. */
	reg = FUNC1();
	if (tsc_is_invariant) {
		FUNC10(MSR_MPERF, 0);
		FUNC10(MSR_APERF, 0);
		tsc1 = FUNC5();
		FUNC0(1000);
		mcnt = FUNC4(MSR_MPERF);
		acnt = FUNC4(MSR_APERF);
		tsc2 = FUNC5();
		FUNC2(reg);
		perf = 1000 * acnt / mcnt;
		*rate = (tsc2 - tsc1) * perf;
	} else {
		tsc1 = FUNC5();
		FUNC0(1000);
		tsc2 = FUNC5();
		FUNC2(reg);
		*rate = (tsc2 - tsc1) * 1000;
	}

#ifdef SMP
	if (smp_cpus > 1) {
		thread_lock(curthread);
		sched_unbind(curthread);
		thread_unlock(curthread);
	}
#endif

	return (0);
}