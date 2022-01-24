#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
struct pvo_entry {int pvo_vaddr; } ;
typedef  TYPE_2__* pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_6__ {int /*<<< orphan*/  wired_count; } ;
struct TYPE_7__ {TYPE_1__ pm_stats; int /*<<< orphan*/  pmap_pvo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct pvo_entry*) ; 
 int PVO_WIRED ; 
 struct pvo_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 struct pvo_entry* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct pvo_entry*) ; 
 int /*<<< orphan*/  pvo_tree ; 

void
FUNC6(mmu_t mmu, pmap_t pm, vm_offset_t sva, vm_offset_t eva)
{
	struct	pvo_entry key, *pvo;

	FUNC0(pm);
	key.pvo_vaddr = sva;
	for (pvo = FUNC4(pvo_tree, &pm->pmap_pvo, &key);
	    pvo != NULL && FUNC2(pvo) < eva;
	    pvo = FUNC3(pvo_tree, &pm->pmap_pvo, pvo)) {
		if ((pvo->pvo_vaddr & PVO_WIRED) == 0)
			FUNC5("moea_unwire: pvo %p is missing PVO_WIRED", pvo);
		pvo->pvo_vaddr &= ~PVO_WIRED;
		pm->pm_stats.wired_count--;
	}
	FUNC1(pm);
}