#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  scalar_t__ vm_offset_t ;
struct TYPE_14__ {int /*<<< orphan*/  pte_lo; } ;
struct TYPE_12__ {TYPE_5__ pte; } ;
struct pvo_entry {scalar_t__ pvo_vaddr; TYPE_2__ pvo_pte; } ;
struct pte {int dummy; } ;
typedef  TYPE_3__* pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_15__ {TYPE_1__* p_vmspace; } ;
struct TYPE_13__ {int /*<<< orphan*/  pmap_pvo; } ;
struct TYPE_11__ {TYPE_3__ vm_pmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  PTE_BR ; 
 int /*<<< orphan*/  PTE_PP ; 
 scalar_t__ FUNC3 (struct pvo_entry*) ; 
 struct pvo_entry* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 struct pvo_entry* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 int VM_PROT_NONE ; 
 int VM_PROT_READ ; 
 TYPE_8__* curproc ; 
 TYPE_3__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC6 (struct pte*,TYPE_5__*,scalar_t__) ; 
 struct pte* FUNC7 (struct pvo_entry*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  moea_table_mutex ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  pvo_tree ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(mmu_t mmu, pmap_t pm, vm_offset_t sva, vm_offset_t eva,
    vm_prot_t prot)
{
	struct	pvo_entry *pvo, *tpvo, key;
	struct	pte *pt;

	FUNC0(pm == &curproc->p_vmspace->vm_pmap || pm == kernel_pmap,
	    ("moea_protect: non current pmap"));

	if ((prot & VM_PROT_READ) == VM_PROT_NONE) {
		FUNC8(mmu, pm, sva, eva);
		return;
	}

	FUNC10(&pvh_global_lock);
	FUNC1(pm);
	key.pvo_vaddr = sva;
	for (pvo = FUNC5(pvo_tree, &pm->pmap_pvo, &key);
	    pvo != NULL && FUNC3(pvo) < eva; pvo = tpvo) {
		tpvo = FUNC4(pvo_tree, &pm->pmap_pvo, pvo);

		/*
		 * Grab the PTE pointer before we diddle with the cached PTE
		 * copy.
		 */
		pt = FUNC7(pvo, -1);
		/*
		 * Change the protection of the page.
		 */
		pvo->pvo_pte.pte.pte_lo &= ~PTE_PP;
		pvo->pvo_pte.pte.pte_lo |= PTE_BR;

		/*
		 * If the PVO is in the page table, update that pte as well.
		 */
		if (pt != NULL) {
			FUNC6(pt, &pvo->pvo_pte.pte, pvo->pvo_vaddr);
			FUNC9(&moea_table_mutex);
		}
	}
	FUNC11(&pvh_global_lock);
	FUNC2(pm);
}