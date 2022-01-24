#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  TYPE_1__* pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_3__ {int /*<<< orphan*/ ** pm_pdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static pte_t *
FUNC3(mmu_t mmu, pmap_t pmap, vm_offset_t va)
{
	unsigned int pdir_idx = FUNC1(va);
	unsigned int ptbl_idx = FUNC2(va);

	FUNC0((pmap != NULL), ("pte_find: invalid pmap"));

	if (pmap->pm_pdir[pdir_idx])
		return (&(pmap->pm_pdir[pdir_idx][ptbl_idx]));

	return (NULL);
}