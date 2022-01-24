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
typedef  int vm_prot_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  scalar_t__ pd_entry_t ;

/* Variables and functions */
 int NBPDR ; 
 int NBSEG ; 
 scalar_t__ PAGE_SIZE ; 
 int PDRMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTE_D ; 
 int /*<<< orphan*/  PTE_MANAGED ; 
 int /*<<< orphan*/  PTE_RO ; 
 int /*<<< orphan*/  PTE_V ; 
 int SEGMASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int VM_PROT_NONE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__*,int) ; 
 scalar_t__* FUNC6 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void
FUNC13(pmap_t pmap, vm_offset_t sva, vm_offset_t eva, vm_prot_t prot)
{
	pt_entry_t pbits, *pte;
	pd_entry_t *pde, *pdpe;
	vm_offset_t va, va_next;
	vm_paddr_t pa;
	vm_page_t m;

	if ((prot & VM_PROT_READ) == VM_PROT_NONE) {
		FUNC7(pmap, sva, eva);
		return;
	}
	if (prot & VM_PROT_WRITE)
		return;

	FUNC1(pmap);
	for (; sva < eva; sva = va_next) {
		pdpe = FUNC8(pmap, sva);
#ifdef __mips_n64
		if (*pdpe == 0) {
			va_next = (sva + NBSEG) & ~SEGMASK;
			if (va_next < sva)
				va_next = eva;
			continue;
		}
#endif
		va_next = (sva + NBPDR) & ~PDRMASK;
		if (va_next < sva)
			va_next = eva;

		pde = FUNC6(pdpe, sva);
		if (*pde == NULL)
			continue;

		/*
		 * Limit our scan to either the end of the va represented
		 * by the current page table page, or to the end of the
		 * range being write protected.
		 */
		if (va_next > eva)
			va_next = eva;

		va = va_next;
		for (pte = FUNC5(pde, sva); sva != va_next; pte++,
		    sva += PAGE_SIZE) {
			pbits = *pte;
			if (!FUNC11(&pbits, PTE_V) || FUNC11(&pbits,
			    PTE_RO)) {
				if (va != va_next) {
					FUNC4(pmap, va, sva);
					va = va_next;
				}
				continue;
			}
			FUNC10(&pbits, PTE_RO);
			if (FUNC11(&pbits, PTE_D)) {
				FUNC9(&pbits, PTE_D);
				if (FUNC11(&pbits, PTE_MANAGED)) {
					pa = FUNC3(pbits);
					m = FUNC0(pa);
					FUNC12(m);
				}
				if (va == va_next)
					va = sva;
			} else {
				/*
				 * Unless PTE_D is set, any TLB entries
				 * mapping "sva" don't allow write access, so
				 * they needn't be invalidated.
				 */
				if (va != va_next) {
					FUNC4(pmap, va, sva);
					va = va_next;
				}
			}
			*pte = pbits;
		}
		if (va != va_next)
			FUNC4(pmap, va, sva);
	}
	FUNC2(pmap);
}