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
typedef  int sbintime_t ;

/* Variables and functions */
 int AMDK8_CMPHALT ; 
 int CPUID2_MON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_SPARE2 ; 
 int /*<<< orphan*/  MSR_AMDK8_IPM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ cpu_disable_c3_sleep ; 
 int cpu_feature2 ; 
 scalar_t__ cpu_ident_amdc1e ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  curcpu ; 
 scalar_t__ idle_mwait ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

void
FUNC11(int busy)
{
	uint64_t msr;
	sbintime_t sbt = -1;

	FUNC0(KTR_SPARE2, "cpu_idle(%d) at %d",
	    busy, curcpu);
#ifdef MP_WATCHDOG
	ap_watchdog(PCPU_GET(cpuid));
#endif

	/* If we are busy - try to use fast methods. */
	if (busy) {
		if ((cpu_feature2 & CPUID2_MON) && idle_mwait) {
			FUNC5(busy);
			goto out;
		}
	}

	/* If we have time - switch timers into idle mode. */
	if (!busy) {
		FUNC7();
		sbt = FUNC6();
	}

	/* Apply AMD APIC timer C1E workaround. */
	if (cpu_ident_amdc1e && cpu_disable_c3_sleep) {
		msr = FUNC9(MSR_AMDK8_IPM);
		if (msr & AMDK8_CMPHALT)
			FUNC10(MSR_AMDK8_IPM, msr & ~AMDK8_CMPHALT);
	}

	/* Call main idle method. */
	FUNC4(sbt);

	/* Switch timers back into active mode. */
	if (!busy) {
		FUNC3();
		FUNC8();
	}
out:
	FUNC0(KTR_SPARE2, "cpu_idle(%d) at %d done",
	    busy, curcpu);
}