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
typedef  int u_int ;

/* Variables and functions */
 int AMDID_RDTSCP ; 
 int CPUID_FXSR ; 
 int CPUID_STDEXT2_RDPID ; 
 int CPUID_XMM ; 
#define  CPU_486 141 
#define  CPU_486DLC 140 
#define  CPU_586 139 
#define  CPU_686 138 
#define  CPU_BLUE 137 
#define  CPU_CY486DX 136 
#define  CPU_M1 135 
#define  CPU_M1SC 134 
#define  CPU_M2 133 
#define  CPU_VENDOR_AMD 132 
#define  CPU_VENDOR_CENTAUR 131 
#define  CPU_VENDOR_INTEL 130 
#define  CPU_VENDOR_RISE 129 
#define  CPU_VENDOR_TRANSMETA 128 
 int CR4_FXSR ; 
 int CR4_XMM ; 
 int EFER_NXE ; 
 int MSR_EFER ; 
 int MSR_HWCR ; 
 int MSR_TSC_AUX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int amd_feature ; 
 int cpu ; 
 int cpu_feature ; 
 int cpu_fxsr ; 
 int cpu_id ; 
 int cpu_stdext_feature2 ; 
 int /*<<< orphan*/  cpu_vendor_id ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 scalar_t__ elf32_nxstack ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int hw_instruction_sse ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 () ; 
 int FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int,int) ; 

void
FUNC22(void)
{
	uint64_t msr;

	switch (cpu) {
#ifdef I486_CPU
	case CPU_BLUE:
		init_bluelightning();
		break;
	case CPU_486DLC:
		init_486dlc();
		break;
	case CPU_CY486DX:
		init_cy486dx();
		break;
	case CPU_M1SC:
		init_5x86();
		break;
#ifdef CPU_I486_ON_386
	case CPU_486:
		init_i486_on_386();
		break;
#endif
	case CPU_M1:
		init_6x86();
		break;
#endif /* I486_CPU */
#ifdef I586_CPU
	case CPU_586:
		switch (cpu_vendor_id) {
		case CPU_VENDOR_AMD:
#ifdef CPU_WT_ALLOC
			if (((cpu_id & 0x0f0) > 0) &&
			    ((cpu_id & 0x0f0) < 0x60) &&
			    ((cpu_id & 0x00f) > 3))
				enable_K5_wt_alloc();
			else if (((cpu_id & 0x0f0) > 0x80) ||
			    (((cpu_id & 0x0f0) == 0x80) &&
				(cpu_id & 0x00f) > 0x07))
				enable_K6_2_wt_alloc();
			else if ((cpu_id & 0x0f0) > 0x50)
				enable_K6_wt_alloc();
#endif
			if ((cpu_id & 0xf0) == 0xa0)
				/*
				 * Make sure the TSC runs through
				 * suspension, otherwise we can't use
				 * it as timecounter
				 */
				wrmsr(0x1900, rdmsr(0x1900) | 0x20ULL);
			break;
		case CPU_VENDOR_CENTAUR:
			init_winchip();
			break;
		case CPU_VENDOR_TRANSMETA:
			init_transmeta();
			break;
		case CPU_VENDOR_RISE:
			init_rise();
			break;
		}
		break;
#endif
#ifdef I686_CPU
	case CPU_M2:
		init_6x86MX();
		break;
	case CPU_686:
		switch (cpu_vendor_id) {
		case CPU_VENDOR_INTEL:
			switch (cpu_id & 0xff0) {
			case 0x610:
				init_ppro();
				break;
			case 0x660:
				init_mendocino();
				break;
			}
			break;
#ifdef CPU_ATHLON_SSE_HACK
		case CPU_VENDOR_AMD:
			/*
			 * Sometimes the BIOS doesn't enable SSE instructions.
			 * According to AMD document 20734, the mobile
			 * Duron, the (mobile) Athlon 4 and the Athlon MP
			 * support SSE. These correspond to cpu_id 0x66X
			 * or 0x67X.
			 */
			if ((cpu_feature & CPUID_XMM) == 0 &&
			    ((cpu_id & ~0xf) == 0x660 ||
			     (cpu_id & ~0xf) == 0x670 ||
			     (cpu_id & ~0xf) == 0x680)) {
				u_int regs[4];
				wrmsr(MSR_HWCR, rdmsr(MSR_HWCR) & ~0x08000);
				do_cpuid(1, regs);
				cpu_feature = regs[3];
			}
			break;
#endif
		case CPU_VENDOR_CENTAUR:
			init_via();
			break;
		case CPU_VENDOR_TRANSMETA:
			init_transmeta();
			break;
		}
		break;
#endif
	default:
		break;
	}
	if ((cpu_feature & CPUID_XMM) && (cpu_feature & CPUID_FXSR)) {
		FUNC18(FUNC19() | CR4_FXSR | CR4_XMM);
		cpu_fxsr = hw_instruction_sse = 1;
	}
	if (elf32_nxstack) {
		msr = FUNC20(MSR_EFER) | EFER_NXE;
		FUNC21(MSR_EFER, msr);
	}
	if ((amd_feature & AMDID_RDTSCP) != 0 ||
	    (cpu_stdext_feature2 & CPUID_STDEXT2_RDPID) != 0)
		FUNC21(MSR_TSC_AUX, FUNC0(cpuid));
}