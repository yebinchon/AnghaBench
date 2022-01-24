#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_3__* pv_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_10__ {int /*<<< orphan*/  pv_va; } ;
struct TYPE_8__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_9__ {TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pv_list ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC4(pmap_t pmap, vm_page_t mpte, vm_offset_t va,
    vm_page_t m)
{
	pv_entry_t pv;

	FUNC3(&pvh_global_lock, RA_WLOCKED);
	FUNC0(pmap, MA_OWNED);
	if ((pv = FUNC2(pmap, TRUE)) != NULL) {
		pv->pv_va = va;
		FUNC1(&m->md.pv_list, pv, pv_list);
		return (TRUE);
	} else
		return (FALSE);
}