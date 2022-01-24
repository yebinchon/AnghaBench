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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  void* vm_offset_t ;
typedef  int pt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PTE_D ; 
 int PTE_G ; 
 int PTE_V ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ VM_MEMATTR_WRITE_BACK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qmap_addr ; 
 int /*<<< orphan*/  qmap_ptep ; 

vm_offset_t
FUNC10(vm_page_t m)
{
#if defined(__mips_n64)
	return MIPS_PHYS_TO_DIRECT(VM_PAGE_TO_PHYS(m));
#else
	vm_offset_t qaddr;
	vm_paddr_t pa;
	pt_entry_t *pte, npte;

	pa = FUNC7(m);

	if (FUNC1(pa)) {
		if (FUNC9(m) != VM_MEMATTR_WRITE_BACK)
			return (FUNC3(pa));
		else
			return (FUNC2(pa));
	}
	FUNC8();
	qaddr = FUNC4(qmap_addr);
	pte = FUNC4(qmap_ptep);

	FUNC0(*pte == PTE_G, ("pmap_quick_enter_page: PTE busy"));

	npte = FUNC6(pa) | PTE_D | PTE_V | PTE_G;
	FUNC5(npte, pa, m);
	*pte = npte;

	return (qaddr);
#endif
}