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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct dmar_root_entry {int r1; int r2; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMAR_GSTS_REG ; 
 int DMAR_GSTS_RTPS ; 
 int DMAR_GSTS_TES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DMAR_ROOT_R1_CTP_MASK ; 
 int DMAR_ROOT_R1_P ; 
 int /*<<< orphan*/  DMAR_RTADDR_REG ; 
 int DMAR_RTADDR_RTA_MASK ; 
 int DMAR_RTADDR_RTT ; 
 int /*<<< orphan*/  DMAR_VER_REG ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,...) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(int segment, uint64_t base_addr)
{
	struct dmar_root_entry *root_table;
	char *regs;
	uint64_t rtaddr;
	uint32_t gsts, ver;
	bool extended;
	int bus;

	regs = FUNC2(base_addr, 4096);

	ver = FUNC6(regs, DMAR_VER_REG);
	gsts = FUNC6(regs, DMAR_GSTS_REG);
	FUNC5("drhd @ %#jx (version %d.%d) PCI segment %d%s:\n",
	    (uintmax_t)base_addr, FUNC0(ver), FUNC1(ver),
	    segment, gsts & DMAR_GSTS_TES ? "" : " (disabled)");
	if ((gsts & (DMAR_GSTS_TES | DMAR_GSTS_RTPS)) !=
	    (DMAR_GSTS_TES | DMAR_GSTS_RTPS))
		return;
	rtaddr = FUNC7(regs, DMAR_RTADDR_REG);
	extended = (rtaddr & DMAR_RTADDR_RTT) != 0;
	FUNC5("    %sroot table @ 0x%#jx\n", extended ? "extended " : "",
	    rtaddr & DMAR_RTADDR_RTA_MASK);
	root_table = FUNC2(rtaddr & DMAR_RTADDR_RTA_MASK, 4096);
	for (bus = 0; bus < 255; bus++) {
		if (extended) {
#ifdef notyet
			if (root_table[bus].r1 & DMAR_ROOT_R1_P)
				dump_ext_context_table(segment, bus,
				    root_table[bus].r1 & DMAR_ROOT_R1_CTP_MASK,
				    false);
			if (root_table[bus].r2 & DMAR_ROOT_R1_P)
				dump_ext_context_table(segment, bus,
				    root_table[bus].r2 & DMAR_ROOT_R1_CTP_MASK,
				    true);
#endif
		} else if (root_table[bus].r1 & DMAR_ROOT_R1_P)
			FUNC3(segment, bus, root_table[bus].r1 &
			    DMAR_ROOT_R1_CTP_MASK);
	}
}