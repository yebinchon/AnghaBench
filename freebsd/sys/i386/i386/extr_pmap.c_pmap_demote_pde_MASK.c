#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
struct spglist {int dummy; } ;
typedef  int pt_entry_t ;
typedef  TYPE_3__* pmap_t ;
typedef  int pd_entry_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_19__ {int /*<<< orphan*/  resident_count; } ;
struct TYPE_21__ {TYPE_1__ pm_stats; } ;
struct TYPE_20__ {scalar_t__ valid; int /*<<< orphan*/  ref_count; } ;
struct TYPE_18__ {scalar_t__ td_pinned; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int* KPTmap ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  NPTEPG ; 
 int* PADDR1 ; 
 int* PADDR2 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int PDRSHIFT ; 
 int PG_A ; 
 int PG_FRAME ; 
 int PG_G ; 
 int PG_M ; 
 int PG_MANAGED ; 
 int PG_PDE_PAT ; 
 int PG_PS ; 
 int PG_PS_FRAME ; 
 int PG_PTE_PAT ; 
 int PG_PTE_PROMOTE ; 
 int PG_RW ; 
 int PG_U ; 
 int PG_V ; 
 int PG_W ; 
 int* PMAP1 ; 
 int /*<<< orphan*/  PMAP1changed ; 
 int /*<<< orphan*/  PMAP1changedcpu ; 
 scalar_t__ PMAP1cpu ; 
 int /*<<< orphan*/  PMAP1unchanged ; 
 int* PMAP2 ; 
 int /*<<< orphan*/  PMAP2mutex ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spglist*) ; 
 int /*<<< orphan*/  TRUE ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_NORMAL ; 
 int VM_ALLOC_WIRED ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  cpuid ; 
 TYPE_14__* curthread ; 
 size_t FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 TYPE_3__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  pmap_pde_demotions ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int*,int,struct spglist*) ; 
 TYPE_2__* FUNC17 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int,int*,int) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int) ; 
 TYPE_2__* FUNC21 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC22 (struct spglist*,int) ; 
 scalar_t__ FUNC23 (int) ; 
 scalar_t__ workaround_erratum383 ; 

__attribute__((used)) static boolean_t
FUNC24(pmap_t pmap, pd_entry_t *pde, vm_offset_t va)
{
	pd_entry_t newpde, oldpde;
	pt_entry_t *firstpte, newpte;
	vm_paddr_t mptepa;
	vm_page_t mpte;
	struct spglist free;
	vm_offset_t sva;

	FUNC3(pmap, MA_OWNED);
	oldpde = *pde;
	FUNC1((oldpde & (PG_PS | PG_V)) == (PG_PS | PG_V),
	    ("pmap_demote_pde: oldpde is missing PG_PS and/or PG_V"));
	if ((oldpde & PG_A) == 0 || (mpte = FUNC17(pmap, va)) ==
	    NULL) {
		FUNC1((oldpde & PG_W) == 0,
		    ("pmap_demote_pde: page table page for a wired mapping"
		    " is missing"));

		/*
		 * Invalidate the 2- or 4MB page mapping and return
		 * "failure" if the mapping was never accessed or the
		 * allocation of the new page table page fails.
		 */
		if ((oldpde & PG_A) == 0 || (mpte = FUNC21(NULL,
		    va >> PDRSHIFT, VM_ALLOC_NOOBJ | VM_ALLOC_NORMAL |
		    VM_ALLOC_WIRED)) == NULL) {
			FUNC4(&free);
			sva = FUNC20(va);
			FUNC16(pmap, pde, sva, &free);
			if ((oldpde & PG_G) == 0)
				FUNC13(pmap, sva, oldpde);
			FUNC22(&free, true);
			FUNC0(KTR_PMAP, "pmap_demote_pde: failure for va %#x"
			    " in pmap %p", va, pmap);
			return (FALSE);
		}
		if (pmap != kernel_pmap) {
			mpte->ref_count = NPTEPG;
			pmap->pm_stats.resident_count++;
		}
	}
	mptepa = FUNC5(mpte);

	/*
	 * If the page mapping is in the kernel's address space, then the
	 * KPTmap can provide access to the page table page.  Otherwise,
	 * temporarily map the page table page (mpte) into the kernel's
	 * address space at either PADDR1 or PADDR2. 
	 */
	if (pmap == kernel_pmap)
		firstpte = &KPTmap[FUNC6(FUNC20(va))];
	else if (curthread->td_pinned > 0 && FUNC19(&pvh_global_lock)) {
		if ((*PMAP1 & PG_FRAME) != mptepa) {
			*PMAP1 = mptepa | PG_RW | PG_V | PG_A | PG_M;
#ifdef SMP
			PMAP1cpu = PCPU_GET(cpuid);
#endif
			FUNC7(PADDR1);
			PMAP1changed++;
		} else
#ifdef SMP
		if (PMAP1cpu != PCPU_GET(cpuid)) {
			PMAP1cpu = PCPU_GET(cpuid);
			invlcaddr(PADDR1);
			PMAP1changedcpu++;
		} else
#endif
			PMAP1unchanged++;
		firstpte = PADDR1;
	} else {
		FUNC8(&PMAP2mutex);
		if ((*PMAP2 & PG_FRAME) != mptepa) {
			*PMAP2 = mptepa | PG_RW | PG_V | PG_A | PG_M;
			FUNC12(kernel_pmap,
			    (vm_offset_t)PADDR2);
		}
		firstpte = PADDR2;
	}
	newpde = mptepa | PG_M | PG_A | (oldpde & PG_U) | PG_RW | PG_V;
	FUNC1((oldpde & PG_A) != 0,
	    ("pmap_demote_pde: oldpde is missing PG_A"));
	FUNC1((oldpde & (PG_M | PG_RW)) != PG_RW,
	    ("pmap_demote_pde: oldpde is missing PG_M"));
	newpte = oldpde & ~PG_PS;
	if ((newpte & PG_PDE_PAT) != 0)
		newpte ^= PG_PDE_PAT | PG_PTE_PAT;

	/*
	 * If the page table page is not leftover from an earlier promotion,
	 * initialize it.
	 */
	if (mpte->valid == 0)
		FUNC11(firstpte, newpte);

	FUNC1((*firstpte & PG_FRAME) == (newpte & PG_FRAME),
	    ("pmap_demote_pde: firstpte and newpte map different physical"
	    " addresses"));

	/*
	 * If the mapping has changed attributes, update the page table
	 * entries.
	 */ 
	if ((*firstpte & PG_PTE_PROMOTE) != (newpte & PG_PTE_PROMOTE))
		FUNC11(firstpte, newpte);
	
	/*
	 * Demote the mapping.  This pmap is locked.  The old PDE has
	 * PG_A set.  If the old PDE has PG_RW set, it also has PG_M
	 * set.  Thus, there is no danger of a race with another
	 * processor changing the setting of PG_A and/or PG_M between
	 * the read above and the store below. 
	 */
	if (workaround_erratum383)
		FUNC18(pmap, va, pde, newpde);
	else if (pmap == kernel_pmap)
		FUNC14(va, newpde);
	else
		FUNC10(pde, newpde);	
	if (firstpte == PADDR2)
		FUNC9(&PMAP2mutex);

	/*
	 * Invalidate the recursive mapping of the page table page.
	 */
	FUNC12(pmap, (vm_offset_t)FUNC23(va));

	/*
	 * Demote the pv entry.  This depends on the earlier demotion
	 * of the mapping.  Specifically, the (re)creation of a per-
	 * page pv entry might trigger the execution of pmap_collect(),
	 * which might reclaim a newly (re)created per-page pv entry
	 * and destroy the associated mapping.  In order to destroy
	 * the mapping, the PDE must have already changed from mapping
	 * the 2mpage to referencing the page table page.
	 */
	if ((oldpde & PG_MANAGED) != 0)
		FUNC15(pmap, va, oldpde & PG_PS_FRAME);

	pmap_pde_demotions++;
	FUNC0(KTR_PMAP, "pmap_demote_pde: success for va %#x"
	    " in pmap %p", va, pmap);
	return (TRUE);
}