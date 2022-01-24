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
typedef  int u_int32_t ;
typedef  int u_int ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int cpu_exthigh ; 
 int cpu_id ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(void)
{
#ifdef __i386__
	uint64_t amd_whcr;
#endif
	u_int regs[4];

	if (cpu_exthigh >= 0x80000005) {
		FUNC2(0x80000005, regs);
		FUNC5("L1 2MB data TLB: %d entries", (regs[0] >> 16) & 0xff);
		FUNC3(regs[0] >> 24);

		FUNC5("L1 2MB instruction TLB: %d entries", regs[0] & 0xff);
		FUNC3((regs[0] >> 8) & 0xff);

		FUNC5("L1 4KB data TLB: %d entries", (regs[1] >> 16) & 0xff);
		FUNC3(regs[1] >> 24);

		FUNC5("L1 4KB instruction TLB: %d entries", regs[1] & 0xff);
		FUNC3((regs[1] >> 8) & 0xff);

		FUNC5("L1 data cache: %d kbytes", regs[2] >> 24);
		FUNC5(", %d bytes/line", regs[2] & 0xff);
		FUNC5(", %d lines/tag", (regs[2] >> 8) & 0xff);
		FUNC3((regs[2] >> 16) & 0xff);

		FUNC5("L1 instruction cache: %d kbytes", regs[3] >> 24);
		FUNC5(", %d bytes/line", regs[3] & 0xff);
		FUNC5(", %d lines/tag", (regs[3] >> 8) & 0xff);
		FUNC3((regs[3] >> 16) & 0xff);
	}

	if (cpu_exthigh >= 0x80000006) {
		FUNC2(0x80000006, regs);
		if ((regs[0] >> 16) != 0) {
			FUNC5("L2 2MB data TLB: %d entries",
			    (regs[0] >> 16) & 0xfff);
			FUNC4(regs[0] >> 28);
			FUNC5("L2 2MB instruction TLB: %d entries",
			    regs[0] & 0xfff);
			FUNC4((regs[0] >> 28) & 0xf);
		} else {
			FUNC5("L2 2MB unified TLB: %d entries",
			    regs[0] & 0xfff);
			FUNC4((regs[0] >> 28) & 0xf);
		}
		if ((regs[1] >> 16) != 0) {
			FUNC5("L2 4KB data TLB: %d entries",
			    (regs[1] >> 16) & 0xfff);
			FUNC4(regs[1] >> 28);

			FUNC5("L2 4KB instruction TLB: %d entries",
			    (regs[1] >> 16) & 0xfff);
			FUNC4((regs[1] >> 28) & 0xf);
		} else {
			FUNC5("L2 4KB unified TLB: %d entries",
			    (regs[1] >> 16) & 0xfff);
			FUNC4((regs[1] >> 28) & 0xf);
		}
		FUNC5("L2 unified cache: %d kbytes", regs[2] >> 16);
		FUNC5(", %d bytes/line", regs[2] & 0xff);
		FUNC5(", %d lines/tag", (regs[2] >> 8) & 0x0f);
		FUNC4((regs[2] >> 12) & 0x0f);
	}

#ifdef __i386__
	if (((cpu_id & 0xf00) == 0x500)
	    && (((cpu_id & 0x0f0) > 0x80)
		|| (((cpu_id & 0x0f0) == 0x80)
		    && (cpu_id & 0x00f) > 0x07))) {
		/* K6-2(new core [Stepping 8-F]), K6-III or later */
		amd_whcr = rdmsr(0xc0000082);
		if (!(amd_whcr & (0x3ff << 22))) {
			printf("Write Allocate Disable\n");
		} else {
			printf("Write Allocate Enable Limit: %dM bytes\n",
			    (u_int32_t)((amd_whcr & (0x3ff << 22)) >> 22) * 4);
			printf("Write Allocate 15-16M bytes: %s\n",
			    (amd_whcr & (1 << 16)) ? "Enable" : "Disable");
		}
	} else if (((cpu_id & 0xf00) == 0x500)
		   && ((cpu_id & 0x0f0) > 0x50)) {
		/* K6, K6-2(old core) */
		amd_whcr = rdmsr(0xc0000082);
		if (!(amd_whcr & (0x7f << 1))) {
			printf("Write Allocate Disable\n");
		} else {
			printf("Write Allocate Enable Limit: %dM bytes\n",
			    (u_int32_t)((amd_whcr & (0x7f << 1)) >> 1) * 4);
			printf("Write Allocate 15-16M bytes: %s\n",
			    (amd_whcr & 0x0001) ? "Enable" : "Disable");
			printf("Hardware Write Allocate Control: %s\n",
			    (amd_whcr & 0x0100) ? "Enable" : "Disable");
		}
	}
#endif
	/*
	 * Opteron Rev E shows a bug as in very rare occasions a read memory
	 * barrier is not performed as expected if it is followed by a
	 * non-atomic read-modify-write instruction.
	 * As long as that bug pops up very rarely (intensive machine usage
	 * on other operating systems generally generates one unexplainable
	 * crash any 2 months) and as long as a model specific fix would be
	 * impractical at this stage, print out a warning string if the broken
	 * model and family are identified.
	 */
	if (FUNC0(cpu_id) == 0xf && FUNC1(cpu_id) >= 0x20 &&
	    FUNC1(cpu_id) <= 0x3f)
		FUNC5("WARNING: This architecture revision has known SMP "
		    "hardware bugs which may cause random instability\n");
}