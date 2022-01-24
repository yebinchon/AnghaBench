#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  os; TYPE_3__** hw_wq; int /*<<< orphan*/  sli; TYPE_5__* wq; int /*<<< orphan*/  wq_count; } ;
typedef  TYPE_2__ ocs_hw_t ;
struct TYPE_13__ {size_t instance; void* ulp; void* class; void* entry_count; TYPE_5__* queue; int /*<<< orphan*/  pending_list; void* free_count; int /*<<< orphan*/  wqec_set_count; int /*<<< orphan*/  wqec_count; int /*<<< orphan*/  type; TYPE_4__* cq; TYPE_2__* hw; } ;
typedef  TYPE_3__ hw_wq_t ;
struct TYPE_14__ {int /*<<< orphan*/  q_list; int /*<<< orphan*/  queue; TYPE_1__* eq; } ;
typedef  TYPE_4__ hw_cq_t ;
struct TYPE_15__ {int /*<<< orphan*/  id; } ;
struct TYPE_11__ {TYPE_2__* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_WQEC_SET_COUNT ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int /*<<< orphan*/  SLI_QTYPE_WQ ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  ocs_hw_wqe_t ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,void*,int /*<<< orphan*/ ,void*) ; 

hw_wq_t*
FUNC7(hw_cq_t *cq, uint32_t entry_count, uint32_t class, uint32_t ulp)
{
	ocs_hw_t *hw = cq->eq->hw;
	hw_wq_t *wq = FUNC5(hw->os, sizeof(*wq), OCS_M_ZERO | OCS_M_NOWAIT);

	if (wq != NULL) {
		wq->hw = cq->eq->hw;
		wq->cq = cq;
		wq->type = SLI_QTYPE_WQ;
		wq->instance = cq->eq->hw->wq_count++;
		wq->entry_count = entry_count;
		wq->queue = &hw->wq[wq->instance];
		wq->ulp = ulp;
		wq->wqec_set_count = OCS_HW_WQEC_SET_COUNT;
		wq->wqec_count = wq->wqec_set_count;
		wq->free_count = wq->entry_count - 1;
		wq->class = class;
		FUNC2(&wq->pending_list, ocs_hw_wqe_t, link);

		if (FUNC6(&hw->sli, SLI_QTYPE_WQ, wq->queue, wq->entry_count, cq->queue, ulp)) {
			FUNC4(hw->os, "WQ allocation failure\n");
			FUNC0(hw->os, wq, sizeof(*wq));
			wq = NULL;
		} else {
			hw->hw_wq[wq->instance] = wq;
			FUNC1(&cq->q_list, wq);
			FUNC3(hw->os, "create wq[%2d] id %3d len %4d cls %d ulp %d\n", wq->instance, wq->queue->id,
				wq->entry_count, wq->class, wq->ulp);
		}
	}
	return wq;
}