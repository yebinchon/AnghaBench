#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_3__* pv_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_9__ {int /*<<< orphan*/  pv_va; int /*<<< orphan*/  pv_pmap; } ;
struct TYPE_7__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_8__ {TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  pv_link ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(pmap_t pmap, vm_offset_t va, vm_page_t m)
{
	pv_entry_t pve;

	//int su = (pmap == kernel_pmap);
	//debugf("pv_insert: s (su = %d pmap = 0x%08x va = 0x%08x m = 0x%08x)\n", su,
	//	(u_int32_t)pmap, va, (u_int32_t)m);

	pve = FUNC3();
	if (pve == NULL)
		FUNC2("pv_insert: no pv entries!");

	pve->pv_pmap = pmap;
	pve->pv_va = va;

	/* add to pv_list */
	FUNC0(pmap, MA_OWNED);
	FUNC4(&pvh_global_lock, RA_WLOCKED);

	FUNC1(&m->md.pv_list, pve, pv_link);

	//debugf("pv_insert: e\n");
}