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
struct pvo_entry {scalar_t__ pvo_vaddr; } ;
struct pvo_dlist {int dummy; } ;
typedef  TYPE_2__* pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_6__ {scalar_t__ resident_count; } ;
struct TYPE_7__ {int /*<<< orphan*/  pmap_pvo; TYPE_1__ pm_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct pvo_entry*) ; 
 struct pvo_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 struct pvo_entry* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvo_dlist*) ; 
 struct pvo_entry* FUNC6 (struct pvo_dlist*) ; 
 int /*<<< orphan*/  FUNC7 (struct pvo_dlist*) ; 
 int /*<<< orphan*/  FUNC8 (struct pvo_dlist*,struct pvo_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pvo_dlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pvo_entry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct pvo_entry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct pvo_entry*) ; 
 int /*<<< orphan*/  pvo_dlink ; 
 int /*<<< orphan*/  pvo_tree ; 

void
FUNC13(mmu_t mmu, pmap_t pm, vm_offset_t sva, vm_offset_t eva)
{
	struct  pvo_entry *pvo, *tpvo, key;
	struct pvo_dlist tofree;

	/*
	 * Perform an unsynchronized read.  This is, however, safe.
	 */
	if (pm->pm_stats.resident_count == 0)
		return;

	key.pvo_vaddr = sva;

	FUNC7(&tofree);

	FUNC0(pm);
	for (pvo = FUNC4(pvo_tree, &pm->pmap_pvo, &key);
	    pvo != NULL && FUNC2(pvo) < eva; pvo = tpvo) {
		tpvo = FUNC3(pvo_tree, &pm->pmap_pvo, pvo);

		/*
		 * For locking reasons, remove this from the page table and
		 * pmap, but save delinking from the vm_page for a second
		 * pass
		 */
		FUNC12(mmu, pvo);
		FUNC8(&tofree, pvo, pvo_dlink);
	}
	FUNC1(pm);

	while (!FUNC5(&tofree)) {
		pvo = FUNC6(&tofree);
		FUNC9(&tofree, pvo_dlink);
		FUNC11(mmu, pvo);
		FUNC10(pvo);
	}
}