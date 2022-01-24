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
typedef  TYPE_2__* pmap_t ;
struct TYPE_7__ {int /*<<< orphan*/  pm_stats; int /*<<< orphan*/  pm_pvchunk; TYPE_1__* pm_asid; int /*<<< orphan*/  pm_active; int /*<<< orphan*/  pm_segtab; } ;
struct TYPE_6__ {scalar_t__ gen; int /*<<< orphan*/  asid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAXCPU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  PMAP_ASID_RESERVED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  curpmap ; 
 int /*<<< orphan*/  kernel_segmap ; 

void
FUNC5(pmap_t pmap)
{
	int i;

	FUNC2(pmap);
	pmap->pm_segtab = kernel_segmap;
	FUNC0(&pmap->pm_active);
	for (i = 0; i < MAXCPU; i++) {
		pmap->pm_asid[i].asid = PMAP_ASID_RESERVED;
		pmap->pm_asid[i].gen = 0;
	}
	FUNC1(curpmap, pmap);
	FUNC3(&pmap->pm_pvchunk);
	FUNC4(&pmap->pm_stats, sizeof pmap->pm_stats);
}