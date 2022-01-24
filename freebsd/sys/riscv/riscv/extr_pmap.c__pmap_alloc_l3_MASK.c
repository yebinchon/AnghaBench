#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
struct rwlock {int dummy; } ;
typedef  int pt_entry_t ;
typedef  int pn_t ;
typedef  TYPE_2__* pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_17__ {int /*<<< orphan*/ * pm_l1; } ;
struct TYPE_16__ {int flags; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 size_t L1_SHIFT ; 
 size_t L2_SHIFT ; 
 size_t Ln_ADDR_MASK ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t NUL1E ; 
 int PAGE_SIZE ; 
 int PG_ZERO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int PTE_PPN0_S ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int PTE_V ; 
 int /*<<< orphan*/  FUNC6 (struct rwlock**) ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,size_t,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vm_page_t
FUNC19(pmap_t pmap, vm_pindex_t ptepindex, struct rwlock **lockp)
{
	vm_page_t m, /*pdppg, */pdpg;
	pt_entry_t entry;
	vm_paddr_t phys;
	pn_t pn;

	FUNC3(pmap, MA_OWNED);

	/*
	 * Allocate a page table page.
	 */
	if ((m = FUNC15(NULL, ptepindex, VM_ALLOC_NOOBJ |
	    VM_ALLOC_WIRED | VM_ALLOC_ZERO)) == NULL) {
		if (lockp != NULL) {
			FUNC6(lockp);
			FUNC4(pmap);
			FUNC14(&pvh_global_lock);
			FUNC18(NULL);
			FUNC13(&pvh_global_lock);
			FUNC2(pmap);
		}

		/*
		 * Indicate the need to retry.  While waiting, the page table
		 * page may have been allocated.
		 */
		return (NULL);
	}

	if ((m->flags & PG_ZERO) == 0)
		FUNC12(m);

	/*
	 * Map the pagetable page into the process address space, if
	 * it isn't already there.
	 */

	if (ptepindex >= NUL1E) {
		pd_entry_t *l1;
		vm_pindex_t l1index;

		l1index = ptepindex - NUL1E;
		l1 = &pmap->pm_l1[l1index];

		pn = (FUNC7(m) / PAGE_SIZE);
		entry = (PTE_V);
		entry |= (pn << PTE_PPN0_S);
		FUNC11(l1, entry);
		FUNC8(pmap, l1index, entry);
	} else {
		vm_pindex_t l1index;
		pd_entry_t *l1, *l2;

		l1index = ptepindex >> (L1_SHIFT - L2_SHIFT);
		l1 = &pmap->pm_l1[l1index];
		if (FUNC9(l1) == 0) {
			/* recurse for allocating page dir */
			if (FUNC19(pmap, NUL1E + l1index,
			    lockp) == NULL) {
				FUNC17(m);
				FUNC16(m);
				return (NULL);
			}
		} else {
			phys = FUNC5(FUNC9(l1));
			pdpg = FUNC1(phys);
			pdpg->ref_count++;
		}

		phys = FUNC5(FUNC9(l1));
		l2 = (pd_entry_t *)FUNC0(phys);
		l2 = &l2[ptepindex & Ln_ADDR_MASK];

		pn = (FUNC7(m) / PAGE_SIZE);
		entry = (PTE_V);
		entry |= (pn << PTE_PPN0_S);
		FUNC11(l2, entry);
	}

	FUNC10(pmap, 1);

	return (m);
}