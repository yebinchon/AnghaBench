#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  TYPE_2__* pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_7__ {int /*<<< orphan*/  wired_count; } ;
struct TYPE_8__ {TYPE_1__ pm_stats; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PTE_WIRED ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(mmu_t mmu, pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
	vm_offset_t va;
	pte_t *pte;

	FUNC0(pmap);
	for (va = sva; va < eva; va += PAGE_SIZE) {
		if ((pte = FUNC5(mmu, pmap, va)) != NULL &&
		    FUNC2(pte)) {
			if (!FUNC3(pte))
				FUNC4("mmu_booke_unwire: pte %p isn't wired",
				    pte);
			*pte &= ~PTE_WIRED;
			pmap->pm_stats.wired_count--;
		}
	}
	FUNC1(pmap);

}