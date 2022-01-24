#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/  os; int /*<<< orphan*/  eq_list; TYPE_2__** hw_eq; int /*<<< orphan*/  sli; TYPE_3__* eq; int /*<<< orphan*/  eq_count; } ;
typedef  TYPE_1__ ocs_hw_t ;
struct TYPE_11__ {size_t instance; int /*<<< orphan*/  entry_count; TYPE_3__* queue; int /*<<< orphan*/ * wq_array; int /*<<< orphan*/  cq_list; TYPE_1__* hw; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ hw_eq_t ;
struct TYPE_12__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_MAX_NUM_WQ ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int /*<<< orphan*/  SLI_QTYPE_EQ ; 
 int /*<<< orphan*/  hw_cq_t ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

hw_eq_t*
FUNC9(ocs_hw_t *hw, uint32_t entry_count)
{
	hw_eq_t *eq = FUNC5(hw->os, sizeof(*eq), OCS_M_ZERO | OCS_M_NOWAIT);

	if (eq != NULL) {
		eq->type = SLI_QTYPE_EQ;
		eq->hw = hw;
		eq->entry_count = entry_count;
		eq->instance = hw->eq_count++;
		eq->queue = &hw->eq[eq->instance];
		FUNC2(&eq->cq_list, hw_cq_t, link);

		eq->wq_array = FUNC6(hw->os, OCS_HW_MAX_NUM_WQ);
		if (eq->wq_array == NULL) {
			FUNC0(hw->os, eq, sizeof(*eq));
			eq = NULL;
		} else {
			if (FUNC8(&hw->sli, SLI_QTYPE_EQ, eq->queue, entry_count, NULL, 0)) {
				FUNC4(hw->os, "EQ[%d] allocation failure\n", eq->instance);
				FUNC0(hw->os, eq, sizeof(*eq));
				eq = NULL;
			} else {
				FUNC7(&hw->sli, eq->queue, 1, 0, 8);
				hw->hw_eq[eq->instance] = eq;
				FUNC1(&hw->eq_list, eq);
				FUNC3(hw->os, "create eq[%2d] id %3d len %4d\n", eq->instance, eq->queue->id,
					eq->entry_count);
			}
		}
	}
	return eq;
}