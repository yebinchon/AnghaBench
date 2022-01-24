#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_14__ {int /*<<< orphan*/  rq_default_buffer_size; } ;
struct TYPE_15__ {size_t rq_count; size_t* hw_rq_lookup; int /*<<< orphan*/  os; TYPE_4__** hw_rq; int /*<<< orphan*/  sli; TYPE_2__ config; TYPE_6__* rq; int /*<<< orphan*/  hw_rq_count; } ;
typedef  TYPE_3__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_sequence_t ;
struct TYPE_16__ {size_t instance; int entry_count; int /*<<< orphan*/ * rq_tracker; int /*<<< orphan*/  ulp; int /*<<< orphan*/  data_entry_size; TYPE_6__* data; int /*<<< orphan*/  hdr_entry_size; TYPE_6__* hdr; int /*<<< orphan*/  type; TYPE_5__* cq; } ;
typedef  TYPE_4__ hw_rq_t ;
struct TYPE_17__ {int /*<<< orphan*/  q_list; int /*<<< orphan*/  queue; TYPE_1__* eq; } ;
typedef  TYPE_5__ hw_cq_t ;
struct TYPE_18__ {int /*<<< orphan*/  id; } ;
struct TYPE_13__ {TYPE_3__* hw; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OCS_HW_MAX_RQ_ENTRIES ; 
 int /*<<< orphan*/  OCS_HW_RQ_HEADER_SIZE ; 
 int OCS_HW_RQ_NUM_HDR ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int /*<<< orphan*/  SLI_QTYPE_RQ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_6__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

hw_rq_t*
FUNC10(hw_cq_t *cq, uint32_t entry_count, uint32_t ulp)
{
	ocs_hw_t *hw = cq->eq->hw;
	hw_rq_t *rq = FUNC8(hw->os, sizeof(*rq), OCS_M_ZERO | OCS_M_NOWAIT);
	uint32_t max_hw_rq;

	FUNC4(hw, OCS_HW_MAX_RQ_ENTRIES, &max_hw_rq);


	if (rq != NULL) {
		rq->instance = hw->hw_rq_count++;
		rq->cq = cq;
		rq->type = SLI_QTYPE_RQ;
		rq->ulp = ulp;

		rq->entry_count = FUNC1(entry_count, FUNC1(max_hw_rq, OCS_HW_RQ_NUM_HDR));

		/* Create the header RQ */
		FUNC3(hw->rq_count < FUNC0(hw->rq));
		rq->hdr = &hw->rq[hw->rq_count];
		rq->hdr_entry_size = OCS_HW_RQ_HEADER_SIZE;

		if (FUNC9(&hw->sli, rq->hdr,
				    rq->entry_count,
				    rq->hdr_entry_size,
				    cq->queue,
				    ulp, TRUE)) {
			FUNC7(hw->os, "RQ allocation failure - header\n");
			FUNC2(hw->os, rq, sizeof(*rq));
			return NULL;
		}
		hw->hw_rq_lookup[hw->rq_count] = rq->instance;	/* Update hw_rq_lookup[] */
		hw->rq_count++;
		FUNC6(hw->os, "create rq[%2d] id %3d len %4d hdr  size %4d ulp %d\n",
			rq->instance, rq->hdr->id, rq->entry_count, rq->hdr_entry_size, rq->ulp);

		/* Create the default data RQ */
		FUNC3(hw->rq_count < FUNC0(hw->rq));
		rq->data = &hw->rq[hw->rq_count];
		rq->data_entry_size = hw->config.rq_default_buffer_size;

		if (FUNC9(&hw->sli, rq->data,
				    rq->entry_count,
				    rq->data_entry_size,
				    cq->queue,
				    ulp, FALSE)) {
			FUNC7(hw->os, "RQ allocation failure - first burst\n");
			FUNC2(hw->os, rq, sizeof(*rq));
			return NULL;
		}
		hw->hw_rq_lookup[hw->rq_count] = rq->instance;	/* Update hw_rq_lookup[] */
		hw->rq_count++;
		FUNC6(hw->os, "create rq[%2d] id %3d len %4d data size %4d ulp %d\n", rq->instance,
			rq->data->id, rq->entry_count, rq->data_entry_size, rq->ulp);

		hw->hw_rq[rq->instance] = rq;
		FUNC5(&cq->q_list, rq);

		rq->rq_tracker = FUNC8(hw->os, sizeof(ocs_hw_sequence_t*) *
					    rq->entry_count, OCS_M_ZERO | OCS_M_NOWAIT);
		if (rq->rq_tracker == NULL) {
			FUNC7(hw->os, "RQ tracker buf allocation failure\n");
			return NULL;
		}
	}
	return rq;
}