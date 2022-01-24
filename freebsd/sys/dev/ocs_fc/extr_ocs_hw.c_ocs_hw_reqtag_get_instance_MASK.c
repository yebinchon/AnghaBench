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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  os; int /*<<< orphan*/  wq_reqtag_pool; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  int /*<<< orphan*/  hw_wq_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

hw_wq_callback_t *
FUNC2(ocs_hw_t *hw, uint32_t instance_index)
{
	hw_wq_callback_t *wqcb;

	wqcb = FUNC1(hw->wq_reqtag_pool, instance_index);
	if (wqcb == NULL) {
		FUNC0(hw->os, "wqcb for instance %d is null\n", instance_index);
	}
	return wqcb;
}