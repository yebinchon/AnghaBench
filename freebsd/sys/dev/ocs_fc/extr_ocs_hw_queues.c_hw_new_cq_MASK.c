#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/  os; TYPE_3__** hw_cq; int /*<<< orphan*/  sli; TYPE_4__* cq; int /*<<< orphan*/  cq_count; } ;
typedef  TYPE_1__ ocs_hw_t ;
struct TYPE_11__ {int /*<<< orphan*/  cq_list; int /*<<< orphan*/  entry_count; int /*<<< orphan*/  instance; int /*<<< orphan*/  queue; TYPE_1__* hw; } ;
typedef  TYPE_2__ hw_eq_t ;
struct TYPE_12__ {size_t instance; int /*<<< orphan*/  entry_count; TYPE_4__* queue; int /*<<< orphan*/  q_list; int /*<<< orphan*/  type; TYPE_2__* eq; } ;
typedef  TYPE_3__ hw_cq_t ;
struct TYPE_13__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int /*<<< orphan*/  SLI_QTYPE_CQ ; 
 int /*<<< orphan*/  hw_q_t ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

hw_cq_t*
FUNC7(hw_eq_t *eq, uint32_t entry_count)
{
	ocs_hw_t *hw = eq->hw;
	hw_cq_t *cq = FUNC5(hw->os, sizeof(*cq), OCS_M_ZERO | OCS_M_NOWAIT);

	if (cq != NULL) {
		cq->eq = eq;
		cq->type = SLI_QTYPE_CQ;
		cq->instance = eq->hw->cq_count++;
		cq->entry_count = entry_count;
		cq->queue = &hw->cq[cq->instance];

		FUNC2(&cq->q_list, hw_q_t, link);

		if (FUNC6(&hw->sli, SLI_QTYPE_CQ, cq->queue, cq->entry_count, eq->queue, 0)) {
			FUNC4(hw->os, "CQ[%d] allocation failure len=%d\n",
				eq->instance,
				eq->entry_count);
			FUNC0(hw->os, cq, sizeof(*cq));
			cq = NULL;
		} else {
			hw->hw_cq[cq->instance] = cq;
			FUNC1(&eq->cq_list, cq);
			FUNC3(hw->os, "create cq[%2d] id %3d len %4d\n", cq->instance, cq->queue->id,
				cq->entry_count);
		}
	}
	return cq;
}