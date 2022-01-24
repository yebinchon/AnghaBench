#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  TYPE_3__* pv_entry_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_11__ {int /*<<< orphan*/  pv_pmap; int /*<<< orphan*/  pv_va; } ;
struct TYPE_9__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_10__ {TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pv_link ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(mmu_t mmu, vm_page_t m)
{
	pv_entry_t pv, pvn;
	uint8_t hold_flag;

	FUNC6(&pvh_global_lock);
	for (pv = FUNC3(&m->md.pv_list); pv != NULL; pv = pvn) {
		pvn = FUNC4(pv, pv_link);

		FUNC0(pv->pv_pmap);
		hold_flag = FUNC2(pv->pv_pmap);
		FUNC5(mmu, pv->pv_pmap, pv->pv_va, hold_flag);
		FUNC1(pv->pv_pmap);
	}
	FUNC8(m, PGA_WRITEABLE);
	FUNC7(&pvh_global_lock);
}