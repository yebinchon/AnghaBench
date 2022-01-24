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
typedef  scalar_t__ vm_offset_t ;
typedef  int u_long ;
struct pmap {int* pm_context; int /*<<< orphan*/  pm_active; } ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASI_DMMU_DEMAP ; 
 int /*<<< orphan*/  ASI_IMMU_DEMAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  KERNBASE ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TLB_DEMAP_NUCLEUS ; 
 int TLB_DEMAP_PAGE ; 
 int TLB_DEMAP_PRIMARY ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  cpuid ; 
 size_t curcpu ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct pmap*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 struct pmap* kernel_pmap ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tlb_nrange_demap ; 

void
FUNC11(struct pmap *pm, vm_offset_t start, vm_offset_t end)
{
	vm_offset_t va;
	void *cookie;
	u_long flags;
	register_t s;

	FUNC3(tlb_nrange_demap);
	cookie = FUNC8(pm, start, end);
	s = FUNC6();
	if (FUNC0(FUNC2(cpuid), &pm->pm_active)) {
		FUNC1(pm->pm_context[curcpu] != -1,
		    ("tlb_range_demap: inactive pmap?"));
		if (pm == kernel_pmap)
			flags = TLB_DEMAP_NUCLEUS | TLB_DEMAP_PAGE;
		else
			flags = TLB_DEMAP_PRIMARY | TLB_DEMAP_PAGE;

		for (va = start; va < end; va += PAGE_SIZE) {
			FUNC10(FUNC4(va) | flags, ASI_DMMU_DEMAP, 0);
			FUNC10(FUNC4(va) | flags, ASI_IMMU_DEMAP, 0);
			FUNC5(KERNBASE);
		}
	}
	FUNC7(s);
	FUNC9(cookie);
}