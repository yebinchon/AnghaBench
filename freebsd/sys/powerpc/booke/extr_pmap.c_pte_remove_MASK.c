#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint8_t ;
typedef  scalar_t__ pte_t ;
typedef  TYPE_4__* pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_14__ {int /*<<< orphan*/  resident_count; int /*<<< orphan*/  wired_count; } ;
struct TYPE_16__ {TYPE_2__ pm_stats; scalar_t__** pm_pdir; } ;
struct TYPE_13__ {int pv_tracked; int /*<<< orphan*/  pv_list; } ;
struct TYPE_15__ {TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int PTBL_UNHOLD ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 scalar_t__ FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_4__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  tlbivax_mutex ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC20(mmu_t mmu, pmap_t pmap, vm_offset_t va, uint8_t flags)
{
	unsigned int pdir_idx = FUNC1(va);
	unsigned int ptbl_idx = FUNC3(va);
	vm_page_t m;
	pte_t *ptbl;
	pte_t *pte;

	//int su = (pmap == kernel_pmap);
	//debugf("pte_remove: s (su = %d pmap = 0x%08x va = 0x%08x flags = %d)\n",
	//		su, (u_int32_t)pmap, va, flags);

	ptbl = pmap->pm_pdir[pdir_idx];
	FUNC0(ptbl, ("pte_remove: null ptbl"));

	pte = &ptbl[ptbl_idx];

	if (pte == NULL || !FUNC7(pte))
		return (0);

	if (FUNC8(pte))
		pmap->pm_stats.wired_count--;

	/* Get vm_page_t for mapped pte. */
	m = FUNC2(FUNC9(pte));

	/* Handle managed entry. */
	if (FUNC4(pte)) {

		if (FUNC5(pte))
			FUNC19(m);

		if (FUNC6(pte))
			FUNC18(m, PGA_REFERENCED);

		FUNC14(pmap, va, m);
	} else if (pmap == kernel_pmap && m && m->md.pv_tracked) {
		/*
		 * Always pv_insert()/pv_remove() on MPC85XX, in case DPAA is
		 * used.  This is needed by the NCSW support code for fast
		 * VA<->PA translation.
		 */
		FUNC14(pmap, va, m);
		if (FUNC10(&m->md.pv_list))
			m->md.pv_tracked = false;
	}

	FUNC11(&tlbivax_mutex);
	FUNC16();

	FUNC15(va);
	*pte = 0;

	FUNC17();
	FUNC12(&tlbivax_mutex);

	pmap->pm_stats.resident_count--;

	if (flags & PTBL_UNHOLD) {
		//debugf("pte_remove: e (unhold)\n");
		return (FUNC13(mmu, pmap, pdir_idx));
	}

	//debugf("pte_remove: e\n");
	return (0);
}