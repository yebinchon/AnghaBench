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
struct TYPE_4__ {int /*<<< orphan*/  os; int /*<<< orphan*/ * wq_reqtag_pool; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_rtn_e ;
typedef  int /*<<< orphan*/  hw_wq_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_RTN_NO_MEMORY ; 
 int /*<<< orphan*/  OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

ocs_hw_rtn_e
FUNC3(ocs_hw_t *hw)
{
	if (hw->wq_reqtag_pool == NULL) {
		hw->wq_reqtag_pool = FUNC2(hw->os, sizeof(hw_wq_callback_t), 65536, TRUE);
		if (hw->wq_reqtag_pool == NULL) {
			FUNC1(hw->os, "ocs_pool_alloc hw_wq_callback_t failed\n");
			return OCS_HW_RTN_NO_MEMORY;
		}
	}
	FUNC0(hw);
	return OCS_HW_RTN_SUCCESS;
}