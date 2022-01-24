#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
struct TYPE_4__ {int /*<<< orphan*/  mdpg_attrs; } ;
struct vm_page {int aflags; int oflags; TYPE_2__ md; } ;
struct TYPE_3__ {int prot; int pa; } ;
struct pvo_entry {int pvo_vaddr; TYPE_1__ pvo_pte; } ;
typedef  scalar_t__ pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int int32_t ;

/* Variables and functions */
 int LPTE_CHG ; 
 int LPTE_G ; 
 int LPTE_I ; 
 int LPTE_NOEXEC ; 
 int LPTE_REF ; 
 int LPTE_RPGN ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MOEA64_PTE_PROT_UPDATE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct pvo_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PGA_EXECUTABLE ; 
 int PGA_REFERENCED ; 
 struct vm_page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int PVO_MANAGED ; 
 int /*<<< orphan*/  FUNC3 (struct pvo_entry*) ; 
 int VM_PROT_WRITE ; 
 int VPO_UNMANAGED ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_page*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_page*) ; 

__attribute__((used)) static void
FUNC8(mmu_t mmu,  pmap_t pm, struct pvo_entry *pvo, vm_prot_t prot)
{
	struct vm_page *pg;
	vm_prot_t oldprot;
	int32_t refchg;

	FUNC2(pm, MA_OWNED);

	/*
	 * Change the protection of the page.
	 */
	oldprot = pvo->pvo_pte.prot;
	pvo->pvo_pte.prot = prot;
	pg = FUNC1(pvo->pvo_pte.pa & LPTE_RPGN);

	/*
	 * If the PVO is in the page table, update mapping
	 */
	refchg = FUNC0(mmu, pvo, MOEA64_PTE_PROT_UPDATE);
	if (refchg < 0)
		refchg = (oldprot & VM_PROT_WRITE) ? LPTE_CHG : 0;

	if (pm != kernel_pmap && pg != NULL && !(pg->aflags & PGA_EXECUTABLE) &&
	    (pvo->pvo_pte.pa & (LPTE_I | LPTE_G | LPTE_NOEXEC)) == 0) {
		if ((pg->oflags & VPO_UNMANAGED) == 0)
			FUNC6(pg, PGA_EXECUTABLE);
		FUNC5(mmu, pm, FUNC3(pvo),
		    pvo->pvo_pte.pa & LPTE_RPGN, PAGE_SIZE);
	}

	/*
	 * Update vm about the REF/CHG bits if the page is managed and we have
	 * removed write access.
	 */
	if (pg != NULL && (pvo->pvo_vaddr & PVO_MANAGED) &&
	    (oldprot & VM_PROT_WRITE)) {
		refchg |= FUNC4(&pg->md.mdpg_attrs);
		if (refchg & LPTE_CHG)
			FUNC7(pg);
		if (refchg & LPTE_REF)
			FUNC6(pg, PGA_REFERENCED);
	}
}