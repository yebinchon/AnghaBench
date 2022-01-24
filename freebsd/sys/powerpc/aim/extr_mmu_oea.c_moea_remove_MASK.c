#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
struct pvo_entry {scalar_t__ pvo_vaddr; } ;
typedef  TYPE_1__* pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_5__ {int /*<<< orphan*/  pmap_pvo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct pvo_entry*) ; 
 struct pvo_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 struct pvo_entry* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvo_entry*,int) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  pvo_tree ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(mmu_t mmu, pmap_t pm, vm_offset_t sva, vm_offset_t eva)
{
	struct	pvo_entry *pvo, *tpvo, key;

	FUNC6(&pvh_global_lock);
	FUNC0(pm);
	key.pvo_vaddr = sva;
	for (pvo = FUNC4(pvo_tree, &pm->pmap_pvo, &key);
	    pvo != NULL && FUNC2(pvo) < eva; pvo = tpvo) {
		tpvo = FUNC3(pvo_tree, &pm->pmap_pvo, pvo);
		FUNC5(pvo, -1);
	}
	FUNC1(pm);
	FUNC7(&pvh_global_lock);
}