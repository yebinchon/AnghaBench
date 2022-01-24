#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_2__ {void* tc_get_timecount; } ;

/* Variables and functions */
 int ACPI_FADT_LEGACY_DEVICES ; 
 int AMDPM_TSC_INVARIANT ; 
 int CPUID_PERF_STAT ; 
 int CPUID_SSE2 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  CPU_VENDOR_AMD 130 
#define  CPU_VENDOR_CENTAUR 129 
#define  CPU_VENDOR_INTEL 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MSR_APERF ; 
 int MSR_MPERF ; 
 int /*<<< orphan*/  FUNC3 (char*,int*) ; 
 scalar_t__ VM_GUEST_NO ; 
 scalar_t__ VM_GUEST_VMWARE ; 
 scalar_t__ FUNC4 (int*) ; 
 int amd_pminfo ; 
 scalar_t__ bootverbose ; 
 int cpu_feature ; 
 int /*<<< orphan*/  cpu_id ; 
 int cpu_power_ecx ; 
 int cpu_vendor_id ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ tsc_freq ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 void* tsc_get_timecount_lfence ; 
 void* tsc_get_timecount_mfence ; 
 int tsc_is_invariant ; 
 int tsc_perf_stat ; 
 int tsc_skip_calibration ; 
 TYPE_1__ tsc_timecounter ; 
 scalar_t__ vm_guest ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(void)
{
	uint64_t tsc1, tsc2;
	uint16_t bootflags;

	if (cpu_power_ecx & CPUID_PERF_STAT) {
		/*
		 * XXX Some emulators expose host CPUID without actual support
		 * for these MSRs.  We must test whether they really work.
		 */
		FUNC11(MSR_MPERF, 0);
		FUNC11(MSR_APERF, 0);
		FUNC2(10);
		if (FUNC6(MSR_MPERF) > 0 && FUNC6(MSR_APERF) > 0)
			tsc_perf_stat = 1;
	}

	if (vm_guest == VM_GUEST_VMWARE) {
		FUNC10();
		return;
	}

	switch (cpu_vendor_id) {
	case CPU_VENDOR_AMD:
		if ((amd_pminfo & AMDPM_TSC_INVARIANT) != 0 ||
		    (vm_guest == VM_GUEST_NO &&
		    FUNC0(cpu_id) >= 0x10))
			tsc_is_invariant = 1;
		if (cpu_feature & CPUID_SSE2) {
			tsc_timecounter.tc_get_timecount =
			    tsc_get_timecount_mfence;
		}
		break;
	case CPU_VENDOR_INTEL:
		if ((amd_pminfo & AMDPM_TSC_INVARIANT) != 0 ||
		    (vm_guest == VM_GUEST_NO &&
		    ((FUNC0(cpu_id) == 0x6 &&
		    FUNC1(cpu_id) >= 0xe) ||
		    (FUNC0(cpu_id) == 0xf &&
		    FUNC1(cpu_id) >= 0x3))))
			tsc_is_invariant = 1;
		if (cpu_feature & CPUID_SSE2) {
			tsc_timecounter.tc_get_timecount =
			    tsc_get_timecount_lfence;
		}
		break;
	case CPU_VENDOR_CENTAUR:
		if (vm_guest == VM_GUEST_NO &&
		    FUNC0(cpu_id) == 0x6 &&
		    FUNC1(cpu_id) >= 0xf &&
		    (FUNC6(0x1203) & 0x100000000ULL) == 0)
			tsc_is_invariant = 1;
		if (cpu_feature & CPUID_SSE2) {
			tsc_timecounter.tc_get_timecount =
			    tsc_get_timecount_lfence;
		}
		break;
	}

	if (!FUNC3("machdep.disable_tsc_calibration",
	    &tsc_skip_calibration)) {
		/*
		 * User did not give the order about calibration.
		 * If he did, we do not try to guess.
		 *
		 * Otherwise, if ACPI FADT reports that the platform
		 * is legacy-free and CPUID provides TSC frequency,
		 * use it.  The calibration could fail anyway since
		 * ISA timer can be absent or power gated.
		 */
		if (FUNC4(&bootflags) &&
		    (bootflags & ACPI_FADT_LEGACY_DEVICES) == 0 &&
		    FUNC8()) {
			FUNC5("Skipping TSC calibration since no legacy "
			    "devices reported by FADT and CPUID works\n");
			tsc_skip_calibration = 1;
		}
	}
	if (tsc_skip_calibration) {
		if (FUNC8())
			;
		else if (cpu_vendor_id == CPU_VENDOR_INTEL)
			FUNC9();
	} else {
		if (bootverbose)
			FUNC5("Calibrating TSC clock ... ");
		tsc1 = FUNC7();
		FUNC2(1000000);
		tsc2 = FUNC7();
		tsc_freq = tsc2 - tsc1;
	}
	if (bootverbose)
		FUNC5("TSC clock: %ju Hz\n", (intmax_t)tsc_freq);
}