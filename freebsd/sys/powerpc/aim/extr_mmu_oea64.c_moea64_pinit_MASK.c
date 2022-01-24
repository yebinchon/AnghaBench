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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_3__ {int /*<<< orphan*/ * pm_sr; struct TYPE_3__* pmap_phys; int /*<<< orphan*/  pmap_pvo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pmap_bootstrapped ; 

void
FUNC5(mmu_t mmu, pmap_t pmap)
{
	int	i;
	uint32_t hash;

	FUNC1(&pmap->pmap_pvo);

	if (pmap_bootstrapped)
		pmap->pmap_phys = (pmap_t)FUNC4(mmu,
		    (vm_offset_t)pmap);
	else
		pmap->pmap_phys = pmap;

	/*
	 * Allocate some segment registers for this pmap.
	 */
	hash = FUNC3();

	for (i = 0; i < 16; i++) 
		pmap->pm_sr[i] = FUNC2(i, hash);

	FUNC0(pmap->pm_sr[0] != 0, ("moea64_pinit: pm_sr[0] = 0"));
}