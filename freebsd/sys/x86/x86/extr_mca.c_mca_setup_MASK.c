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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CPU_VENDOR_AMD ; 
 int CTLFLAG_MPSAFE ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLFLAG_RWTUN ; 
 int CTLTYPE_INT ; 
 int MCG_CAP_COUNT ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _hw_mca ; 
 scalar_t__ amd10h_L1TP ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  cpu_id ; 
 scalar_t__ cpu_vendor_id ; 
 int mca_banks ; 
 int /*<<< orphan*/  mca_count ; 
 int /*<<< orphan*/  mca_freelist ; 
 int /*<<< orphan*/  mca_lock ; 
 int /*<<< orphan*/  mca_maxcount ; 
 int /*<<< orphan*/  mca_pending ; 
 int /*<<< orphan*/  mca_records ; 
 int /*<<< orphan*/  mca_resize ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  mca_resize_task ; 
 int /*<<< orphan*/  mca_scan_cpus ; 
 int /*<<< orphan*/  mca_scan_task ; 
 int /*<<< orphan*/  mca_ticks ; 
 int /*<<< orphan*/  mca_timer ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_mca_maxcount ; 
 int /*<<< orphan*/  sysctl_mca_records ; 
 int /*<<< orphan*/  sysctl_mca_scan ; 
 int /*<<< orphan*/  sysctl_positive_int ; 
 int workaround_erratum383 ; 

__attribute__((used)) static void
FUNC14(uint64_t mcg_cap)
{

	/*
	 * On AMD Family 10h processors, unless logging of level one TLB
	 * parity (L1TP) errors is disabled, enable the recommended workaround
	 * for Erratum 383.
	 */
	if (cpu_vendor_id == CPU_VENDOR_AMD &&
	    FUNC0(cpu_id) == 0x10 && amd10h_L1TP)
		workaround_erratum383 = 1;

	mca_banks = mcg_cap & MCG_CAP_COUNT;
	FUNC13(&mca_lock, "mca", NULL, MTX_SPIN);
	FUNC1(&mca_records);
	FUNC1(&mca_pending);
	FUNC6(&mca_scan_task, 0, mca_scan_cpus, NULL);
	FUNC9(&mca_timer, 1);
	FUNC1(&mca_freelist);
	FUNC6(&mca_resize_task, 0, mca_resize, NULL);
	FUNC12();
	FUNC2(NULL, FUNC5(_hw_mca), OID_AUTO,
	    "count", CTLFLAG_RD, (int *)(uintptr_t)&mca_count, 0,
	    "Record count");
	FUNC4(NULL, FUNC5(_hw_mca), OID_AUTO,
	    "maxcount", CTLTYPE_INT | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
	    &mca_maxcount, 0, sysctl_mca_maxcount, "I",
	    "Maximum record count (-1 is unlimited)");
	FUNC4(NULL, FUNC5(_hw_mca), OID_AUTO,
	    "interval", CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE, &mca_ticks,
	    0, sysctl_positive_int, "I",
	    "Periodic interval in seconds to scan for machine checks");
	FUNC3(NULL, FUNC5(_hw_mca), OID_AUTO,
	    "records", CTLFLAG_RD, sysctl_mca_records, "Machine check records");
	FUNC4(NULL, FUNC5(_hw_mca), OID_AUTO,
	    "force_scan", CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE, NULL, 0,
	    sysctl_mca_scan, "I", "Force an immediate scan for machine checks");
#ifdef DEV_APIC
	if (cmci_supported(mcg_cap))
		cmci_setup();
	else if (amd_thresholding_supported())
		amd_thresholding_setup();
#endif
}