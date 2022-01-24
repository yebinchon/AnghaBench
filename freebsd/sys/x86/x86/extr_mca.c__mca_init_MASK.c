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
typedef  int uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* status ) (int) ;int /*<<< orphan*/  (* ctl ) (int) ;int /*<<< orphan*/  misc; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int AMDRAS_SCALABLE_MCA ; 
 int CPUID_MCA ; 
 int CPUID_MCE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CPU_VENDOR_AMD ; 
 scalar_t__ CPU_VENDOR_INTEL ; 
 int CR4_MCE ; 
 scalar_t__ FUNC2 () ; 
 int MCG_CAP_COUNT ; 
 int MCG_CAP_CTL_P ; 
 int MCG_CTL_ENABLE ; 
 int MC_AMDNB_BANK ; 
 int /*<<< orphan*/  MSR_MC0_CTL_MASK ; 
 int /*<<< orphan*/  MSR_MCG_CAP ; 
 int /*<<< orphan*/  MSR_MCG_CTL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amd10h_L1TP ; 
 int amd_rascap ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  cmci_mask ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 int cpu_feature ; 
 int /*<<< orphan*/  cpu_id ; 
 scalar_t__ cpu_vendor_id ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  mca_enabled ; 
 int /*<<< orphan*/  mca_lock ; 
 TYPE_1__ mca_msr_ops ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  mca_smca_addr_reg ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  mca_smca_misc_reg ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 () ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC23(int boot)
{
	uint64_t mcg_cap;
	uint64_t ctl, mask;
	int i, skip, family;

	family = FUNC0(cpu_id);

	/* MCE is required. */
	if (!mca_enabled || !(cpu_feature & CPUID_MCE))
		return;

	if (cpu_feature & CPUID_MCA) {
		if (boot)
			FUNC4(cmci_mask, 0);

		mcg_cap = FUNC19(MSR_MCG_CAP);
		if (mcg_cap & MCG_CAP_CTL_P)
			/* Enable MCA features. */
			FUNC22(MSR_MCG_CTL, MCG_CTL_ENABLE);
		if (FUNC2() && boot)
			FUNC13(mcg_cap);

		/*
		 * Disable logging of level one TLB parity (L1TP) errors by
		 * the data cache as an alternative workaround for AMD Family
		 * 10h Erratum 383.  Unlike the recommended workaround, there
		 * is no performance penalty to this workaround.  However,
		 * L1TP errors will go unreported.
		 */
		if (cpu_vendor_id == CPU_VENDOR_AMD && family == 0x10 &&
		    !amd10h_L1TP) {
			mask = FUNC19(MSR_MC0_CTL_MASK);
			if ((mask & (1UL << 5)) == 0)
				FUNC22(MSR_MC0_CTL_MASK, mask | (1UL << 5));
		}
		if (amd_rascap & AMDRAS_SCALABLE_MCA) {
			mca_msr_ops.ctl = mca_smca_ctl_reg;
			mca_msr_ops.status = mca_smca_status_reg;
			mca_msr_ops.addr = mca_smca_addr_reg;
			mca_msr_ops.misc = mca_smca_misc_reg;
		}

		/*
		 * The cmci_monitor() must not be executed
		 * simultaneously by several CPUs.
		 */
		if (boot)
			FUNC16(&mca_lock);

		for (i = 0; i < (mcg_cap & MCG_CAP_COUNT); i++) {
			/* By default enable logging of all errors. */
			ctl = 0xffffffffffffffffUL;
			skip = 0;

			if (cpu_vendor_id == CPU_VENDOR_INTEL) {
				/*
				 * For P6 models before Nehalem MC0_CTL is
				 * always enabled and reserved.
				 */
				if (i == 0 && family == 0x6
				    && FUNC1(cpu_id) < 0x1a)
					skip = 1;
			} else if (cpu_vendor_id == CPU_VENDOR_AMD) {
				/* BKDG for Family 10h: unset GartTblWkEn. */
				if (i == MC_AMDNB_BANK && family >= 0xf &&
				    family < 0x17)
					ctl &= ~(1UL << 10);
			}

			if (!skip)
				FUNC22(mca_msr_ops.ctl(i), ctl);

#ifdef DEV_APIC
			if (cmci_supported(mcg_cap)) {
				if (boot)
					cmci_monitor(i);
				else
					cmci_resume(i);
			} else if (amd_thresholding_supported()) {
				if (boot)
					amd_thresholding_monitor(i);
				else
					amd_thresholding_resume(i);
			}
#endif

			/* Clear all errors. */
			FUNC22(mca_msr_ops.status(i), 0);
		}
		if (boot)
			FUNC17(&mca_lock);

#ifdef DEV_APIC
		if (!amd_thresholding_supported() &&
		    PCPU_GET(cmci_mask) != 0 && boot)
			lapic_enable_cmc();
#endif
	}

	FUNC12(FUNC18() | CR4_MCE);
}