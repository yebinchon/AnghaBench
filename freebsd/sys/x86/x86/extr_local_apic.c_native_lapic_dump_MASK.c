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
typedef  int uint32_t ;

/* Variables and functions */
 int APIC_LVT_CMCI ; 
 int APIC_LVT_PMC ; 
 int APIC_VER_MAXLVT ; 
 int CPUID2_X2APIC ; 
 scalar_t__ LAPIC_DFR ; 
 scalar_t__ LAPIC_EXT_LVT0 ; 
 scalar_t__ LAPIC_ID ; 
 scalar_t__ LAPIC_LDR ; 
 scalar_t__ LAPIC_LVT_CMCI ; 
 scalar_t__ LAPIC_LVT_ERROR ; 
 scalar_t__ LAPIC_LVT_LINT0 ; 
 scalar_t__ LAPIC_LVT_LINT1 ; 
 scalar_t__ LAPIC_LVT_PCINT ; 
 scalar_t__ LAPIC_LVT_THERMAL ; 
 scalar_t__ LAPIC_LVT_TIMER ; 
 scalar_t__ LAPIC_SVR ; 
 scalar_t__ LAPIC_TPR ; 
 scalar_t__ LAPIC_VERSION ; 
 int MAXLVTSHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int cpu_feature2 ; 
 int /*<<< orphan*/  cpuid ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int x2apic_mode ; 

__attribute__((used)) static void
FUNC5(const char* str)
{
	uint32_t version;
	uint32_t maxlvt;
	uint32_t extf;
	int elvt_count;
	int i;

	version = FUNC3(LAPIC_VERSION);
	maxlvt = (version & APIC_VER_MAXLVT) >> MAXLVTSHIFT;
	FUNC4("cpu%d %s:\n", FUNC0(cpuid), str);
	FUNC4("     ID: 0x%08x   VER: 0x%08x LDR: 0x%08x DFR: 0x%08x",
	    FUNC3(LAPIC_ID), version,
	    FUNC3(LAPIC_LDR), x2apic_mode ? 0 : FUNC3(LAPIC_DFR));
	if ((cpu_feature2 & CPUID2_X2APIC) != 0)
		FUNC4(" x2APIC: %d", x2apic_mode);
	FUNC4("\n  lint0: 0x%08x lint1: 0x%08x TPR: 0x%08x SVR: 0x%08x\n",
	    FUNC3(LAPIC_LVT_LINT0), FUNC3(LAPIC_LVT_LINT1),
	    FUNC3(LAPIC_TPR), FUNC3(LAPIC_SVR));
	FUNC4("  timer: 0x%08x therm: 0x%08x err: 0x%08x",
	    FUNC3(LAPIC_LVT_TIMER), FUNC3(LAPIC_LVT_THERMAL),
	    FUNC3(LAPIC_LVT_ERROR));
	if (maxlvt >= APIC_LVT_PMC)
		FUNC4(" pmc: 0x%08x", FUNC3(LAPIC_LVT_PCINT));
	FUNC4("\n");
	if (maxlvt >= APIC_LVT_CMCI)
		FUNC4("   cmci: 0x%08x\n", FUNC3(LAPIC_LVT_CMCI));
	extf = FUNC2();
	if (extf != 0) {
		FUNC4("   AMD ext features: 0x%08x\n", extf);
		elvt_count = FUNC1();
		for (i = 0; i < elvt_count; i++)
			FUNC4("   AMD elvt%d: 0x%08x\n", i,
			    FUNC3(LAPIC_EXT_LVT0 + i));
	}
}