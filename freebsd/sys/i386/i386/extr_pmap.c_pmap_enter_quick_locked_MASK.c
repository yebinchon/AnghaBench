#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_16__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  TYPE_3__* vm_page_t ;
typedef  size_t vm_offset_t ;
typedef  size_t u_int ;
struct spglist {int dummy; } ;
typedef  int pt_entry_t ;
typedef  TYPE_4__* pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_24__ {int /*<<< orphan*/  resident_count; } ;
struct TYPE_27__ {int* pm_pdir; TYPE_1__ pm_stats; } ;
struct TYPE_25__ {int /*<<< orphan*/  pat_mode; } ;
struct TYPE_26__ {int oflags; size_t pindex; TYPE_2__ md; int /*<<< orphan*/  ref_count; } ;
struct TYPE_23__ {size_t clean_sva; size_t clean_eva; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t PDRSHIFT ; 
 int PG_FRAME ; 
 int PG_MANAGED ; 
 int PG_PS ; 
 int PG_U ; 
 int PG_V ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  PMAP_ENTER_NOSLEEP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  FUNC3 (struct spglist*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int VM_PROT_EXECUTE ; 
 int VPO_UNMANAGED ; 
 TYPE_3__* FUNC5 (TYPE_4__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i386_read_exec ; 
 TYPE_4__* kernel_pmap ; 
 TYPE_16__ kmi ; 
 int pg_nx ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,size_t) ; 
 int* FUNC8 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,size_t,TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_4__*,TYPE_3__*,struct spglist*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct spglist*,int) ; 

__attribute__((used)) static vm_page_t
FUNC16(pmap_t pmap, vm_offset_t va, vm_page_t m,
    vm_prot_t prot, vm_page_t mpte)
{
	pt_entry_t newpte, *pte;
	struct spglist free;

	FUNC0(pmap != kernel_pmap || va < kmi.clean_sva ||
	    va >= kmi.clean_eva || (m->oflags & VPO_UNMANAGED) != 0,
	    ("pmap_enter_quick_locked: managed mapping within the clean submap"));
	FUNC12(&pvh_global_lock, RA_WLOCKED);
	FUNC2(pmap, MA_OWNED);

	/*
	 * In the case that a page table page is not
	 * resident, we are creating it here.
	 */
	if (pmap != kernel_pmap) {
		u_int ptepindex;
		pd_entry_t ptepa;

		/*
		 * Calculate pagetable page index
		 */
		ptepindex = va >> PDRSHIFT;
		if (mpte && (mpte->pindex == ptepindex)) {
			mpte->ref_count++;
		} else {
			/*
			 * Get the page directory entry
			 */
			ptepa = pmap->pm_pdir[ptepindex];

			/*
			 * If the page table page is mapped, we just increment
			 * the hold count, and activate it.
			 */
			if (ptepa) {
				if (ptepa & PG_PS)
					return (NULL);
				mpte = FUNC1(ptepa & PG_FRAME);
				mpte->ref_count++;
			} else {
				mpte = FUNC5(pmap, ptepindex,
				    PMAP_ENTER_NOSLEEP);
				if (mpte == NULL)
					return (mpte);
			}
		}
	} else {
		mpte = NULL;
	}

	FUNC13();
	pte = FUNC8(pmap, va);
	if (*pte) {
		if (mpte != NULL) {
			mpte->ref_count--;
			mpte = NULL;
		}
		FUNC14();
		return (mpte);
	}

	/*
	 * Enter on the PV list if part of our managed memory.
	 */
	if ((m->oflags & VPO_UNMANAGED) == 0 &&
	    !FUNC9(pmap, va, m)) {
		if (mpte != NULL) {
			FUNC3(&free);
			if (FUNC10(pmap, mpte, &free)) {
				FUNC7(pmap, va);
				FUNC15(&free, true);
			}
			
			mpte = NULL;
		}
		FUNC14();
		return (mpte);
	}

	/*
	 * Increment counters
	 */
	pmap->pm_stats.resident_count++;

	newpte = FUNC4(m) | PG_V |
	    FUNC6(pmap, m->md.pat_mode, 0);
	if ((m->oflags & VPO_UNMANAGED) == 0)
		newpte |= PG_MANAGED;
#ifdef PMAP_PAE_COMP
	if ((prot & VM_PROT_EXECUTE) == 0 && !i386_read_exec)
		newpte |= pg_nx;
#endif
	if (pmap != kernel_pmap)
		newpte |= PG_U;
	FUNC11(pte, newpte);
	FUNC14();
	return (mpte);
}