#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_4__ {scalar_t__* pm_sr; int /*<<< orphan*/  pm_slb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(mmu_t mmu, pmap_t pmap)
{
        
	/*
	 * Free segment registers' VSIDs
	 */
    #ifdef __powerpc64__
	slb_free_tree(pmap);
	slb_free_user_cache(pmap->pm_slb);
    #else
	FUNC0(pmap->pm_sr[0] != 0, ("moea64_release: pm_sr[0] = 0"));

	FUNC2(FUNC1(pmap->pm_sr[0]));
    #endif
}