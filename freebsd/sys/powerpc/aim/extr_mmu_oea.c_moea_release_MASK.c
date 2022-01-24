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
typedef  TYPE_1__* pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_3__ {scalar_t__* pm_sr; } ;

/* Variables and functions */
 int NPMAPS ; 
 int VSID_NBPW ; 
 int FUNC0 (scalar_t__) ; 
 int* moea_vsid_bitmap ; 
 int /*<<< orphan*/  moea_vsid_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(mmu_t mmu, pmap_t pmap)
{
        int idx, mask;

	/*
	 * Free segment register's VSID
	 */
        if (pmap->pm_sr[0] == 0)
                FUNC3("moea_release");

	FUNC1(&moea_vsid_mutex);
        idx = FUNC0(pmap->pm_sr[0]) & (NPMAPS-1);
        mask = 1 << (idx % VSID_NBPW);
        idx /= VSID_NBPW;
        moea_vsid_bitmap[idx] &= ~mask;
	FUNC2(&moea_vsid_mutex);
}