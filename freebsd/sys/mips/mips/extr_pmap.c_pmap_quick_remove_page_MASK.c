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
typedef  scalar_t__* vm_offset_t ;
typedef  scalar_t__ pt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__* MIPS_KSEG0_END ; 
 scalar_t__* MIPS_KSEG0_START ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PTE_G ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qmap_addr ; 
 int /*<<< orphan*/  qmap_ptep ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 

void
FUNC5(vm_offset_t addr)
{
	FUNC3(addr, PAGE_SIZE);

#if !defined(__mips_n64)
	pt_entry_t *pte;

	if (addr >= MIPS_KSEG0_START && addr < MIPS_KSEG0_END)
		return;

	pte = FUNC1(qmap_ptep);

	FUNC0(*pte != PTE_G,
	    ("pmap_quick_remove_page: PTE not in use"));
	FUNC0(FUNC1(qmap_addr) == addr,
	    ("pmap_quick_remove_page: invalid address"));

	*pte = PTE_G;
	FUNC4(kernel_pmap, addr);
	FUNC2();
#endif
}