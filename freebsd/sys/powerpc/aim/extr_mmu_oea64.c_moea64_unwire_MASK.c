#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
struct TYPE_12__ {int prot; int pa; } ;
struct pvo_entry {int pvo_vaddr; TYPE_1__ pvo_pte; } ;
typedef  TYPE_5__* pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int int64_t ;
struct TYPE_14__ {int /*<<< orphan*/  wired_count; } ;
struct TYPE_16__ {TYPE_3__ pm_stats; int /*<<< orphan*/  pmap_pvo; } ;
struct TYPE_13__ {int /*<<< orphan*/  mdpg_attrs; } ;
struct TYPE_15__ {TYPE_2__ md; } ;

/* Variables and functions */
 int LPTE_CHG ; 
 int LPTE_REF ; 
 int LPTE_RPGN ; 
 int FUNC0 (int /*<<< orphan*/ ,struct pvo_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 TYPE_4__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int PVO_MANAGED ; 
 scalar_t__ FUNC4 (struct pvo_entry*) ; 
 int PVO_WIRED ; 
 struct pvo_entry* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 struct pvo_entry* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 int VM_PROT_WRITE ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct pvo_entry*) ; 
 int /*<<< orphan*/  pvo_tree ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 

void
FUNC11(mmu_t mmu, pmap_t pm, vm_offset_t sva, vm_offset_t eva)
{
	struct	pvo_entry key, *pvo;
	vm_page_t m;
	int64_t	refchg;

	key.pvo_vaddr = sva;
	FUNC2(pm);
	for (pvo = FUNC6(pvo_tree, &pm->pmap_pvo, &key);
	    pvo != NULL && FUNC4(pvo) < eva;
	    pvo = FUNC5(pvo_tree, &pm->pmap_pvo, pvo)) {
		if ((pvo->pvo_vaddr & PVO_WIRED) == 0)
			FUNC8("moea64_unwire: pvo %p is missing PVO_WIRED",
			    pvo);
		pvo->pvo_vaddr &= ~PVO_WIRED;
		refchg = FUNC0(mmu, pvo, 0 /* No invalidation */);
		if ((pvo->pvo_vaddr & PVO_MANAGED) &&
		    (pvo->pvo_pte.prot & VM_PROT_WRITE)) {
			if (refchg < 0)
				refchg = LPTE_CHG;
			m = FUNC1(pvo->pvo_pte.pa & LPTE_RPGN);

			refchg |= FUNC7(&m->md.mdpg_attrs);
			if (refchg & LPTE_CHG)
				FUNC10(m);
			if (refchg & LPTE_REF)
				FUNC9(m, PGA_REFERENCED);
		}
		pm->pm_stats.wired_count--;
	}
	FUNC3(pm);
}