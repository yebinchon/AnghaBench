#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* entry; int /*<<< orphan*/  wired; } ;
struct TYPE_3__ {int /*<<< orphan*/  entrylo1; int /*<<< orphan*/  entrylo0; int /*<<< orphan*/  pagemask; int /*<<< orphan*/  entryhi; } ;

/* Variables and functions */
 unsigned int MIPS_MAX_TLB_ENTRIES ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 unsigned int num_tlbentries ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__* tlb_state ; 

void
FUNC8(void)
{
	unsigned ntlb, i, cpu;

	cpu = FUNC0(cpuid);
	if (num_tlbentries > MIPS_MAX_TLB_ENTRIES)
		ntlb = MIPS_MAX_TLB_ENTRIES;
	else
		ntlb = num_tlbentries;
	tlb_state[cpu].wired = FUNC5();
	for (i = 0; i < ntlb; i++) {
		FUNC6(i);
		FUNC7();

		tlb_state[cpu].entry[i].entryhi = FUNC1();
		tlb_state[cpu].entry[i].pagemask = FUNC4();
		tlb_state[cpu].entry[i].entrylo0 = FUNC2();
		tlb_state[cpu].entry[i].entrylo1 = FUNC3();
	}
}