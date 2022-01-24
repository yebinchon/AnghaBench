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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  scalar_t__ pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VM_MAXUSER_ADDRESS ; 
 int /*<<< orphan*/  VM_MAX_KERNEL_ADDRESS ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  virtual_avail ; 

__attribute__((used)) static void
FUNC10(mmu_t mmu, pmap_t pmap, vm_offset_t va, vm_offset_t endva)
{
	pte_t *pte;
	uint8_t hold_flag;

	int su = (pmap == kernel_pmap);

	//debugf("mmu_booke_remove: s (su = %d pmap=0x%08x tid=%d va=0x%08x endva=0x%08x)\n",
	//		su, (u_int32_t)pmap, pmap->pm_tid, va, endva);

	if (su) {
		FUNC0(((va >= virtual_avail) &&
		    (va <= VM_MAX_KERNEL_ADDRESS)),
		    ("mmu_booke_remove: kernel pmap, non kernel va"));
	} else {
		FUNC0((va <= VM_MAXUSER_ADDRESS),
		    ("mmu_booke_remove: user pmap, non user va"));
	}

	if (FUNC2(pmap)) {
		//debugf("mmu_booke_remove: e (empty)\n");
		return;
	}

	hold_flag = FUNC4(pmap);
	//debugf("mmu_booke_remove: hold_flag = %d\n", hold_flag);

	FUNC8(&pvh_global_lock);
	FUNC1(pmap);
	for (; va < endva; va += PAGE_SIZE) {
		pte = FUNC6(mmu, pmap, va);
		if ((pte != NULL) && FUNC5(pte))
			FUNC7(mmu, pmap, va, hold_flag);
	}
	FUNC3(pmap);
	FUNC9(&pvh_global_lock);

	//debugf("mmu_booke_remove: e\n");
}