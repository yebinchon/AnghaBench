#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int u_int ;
typedef  TYPE_3__* pmap_t ;
typedef  int /*<<< orphan*/ * pd_entry_t ;
struct TYPE_13__ {int /*<<< orphan*/  resident_count; } ;
struct TYPE_15__ {TYPE_1__ pm_stats; int /*<<< orphan*/ ** pm_segtab; } ;
struct TYPE_14__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int NPDEPG ; 
 unsigned int NUPDE ; 
 unsigned int PDRSHIFT ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int PMAP_ENTER_NOSLEEP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 unsigned int SEGSHIFT ; 
 int VM_ALLOC_NORMAL ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static vm_page_t
FUNC12(pmap_t pmap, unsigned ptepindex, u_int flags)
{
	vm_offset_t pageva;
	vm_page_t m;
	int req_class;

	/*
	 * Find or fabricate a new pagetable page
	 */
	req_class = VM_ALLOC_NORMAL;
	if ((m = FUNC6(ptepindex, req_class)) == NULL) {
		if ((flags & PMAP_ENTER_NOSLEEP) == 0) {
			FUNC4(pmap);
			FUNC9(&pvh_global_lock);
			FUNC7(req_class);
			FUNC8(&pvh_global_lock);
			FUNC3(pmap);
		}

		/*
		 * Indicate the need to retry.	While waiting, the page
		 * table page may have been allocated.
		 */
		return (NULL);
	}

	/*
	 * Map the pagetable page into the process address space, if it
	 * isn't already there.
	 */
	pageva = FUNC1(FUNC5(m));

#ifdef __mips_n64
	if (ptepindex >= NUPDE) {
		pmap->pm_segtab[ptepindex - NUPDE] = (pd_entry_t)pageva;
	} else {
		pd_entry_t *pdep, *pde;
		int segindex = ptepindex >> (SEGSHIFT - PDRSHIFT);
		int pdeindex = ptepindex & (NPDEPG - 1);
		vm_page_t pg;

		pdep = &pmap->pm_segtab[segindex];
		if (*pdep == NULL) {
			/* recurse for allocating page dir */
			if (_pmap_allocpte(pmap, NUPDE + segindex,
			    flags) == NULL) {
				/* alloc failed, release current */
				vm_page_unwire_noq(m);
				vm_page_free_zero(m);
				return (NULL);
			}
		} else {
			pg = PHYS_TO_VM_PAGE(MIPS_DIRECT_TO_PHYS(*pdep));
			pg->ref_count++;
		}
		/* Next level entry */
		pde = (pd_entry_t *)*pdep;
		pde[pdeindex] = (pd_entry_t)pageva;
	}
#else
	pmap->pm_segtab[ptepindex] = (pd_entry_t)pageva;
#endif
	pmap->pm_stats.resident_count++;
	return (m);
}