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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  sli4_t ;
typedef  int /*<<< orphan*/  sli4_queue_t ;
struct TYPE_9__ {int /*<<< orphan*/  os; TYPE_3__** hw_cq; int /*<<< orphan*/ * cq; int /*<<< orphan*/  cq_count; int /*<<< orphan*/  sli; } ;
typedef  TYPE_1__ ocs_hw_t ;
struct TYPE_10__ {int /*<<< orphan*/  cq_list; int /*<<< orphan*/ * queue; TYPE_1__* hw; } ;
typedef  TYPE_2__ hw_eq_t ;
struct TYPE_11__ {size_t instance; size_t entry_count; TYPE_2__* eq; int /*<<< orphan*/  q_list; int /*<<< orphan*/ * queue; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ hw_cq_t ;

/* Variables and functions */
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int SLI_MAX_CQ_SET_COUNT ; 
 int /*<<< orphan*/  SLI_QTYPE_CQ ; 
 int /*<<< orphan*/  hw_q_t ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t,size_t,int /*<<< orphan*/ **) ; 

uint32_t
FUNC6(hw_eq_t *eqs[], hw_cq_t *cqs[], uint32_t num_cqs, uint32_t entry_count)
{
	uint32_t i;
	ocs_hw_t *hw = eqs[0]->hw;
	sli4_t *sli4 = &hw->sli;
	hw_cq_t *cq = NULL;
	sli4_queue_t *qs[SLI_MAX_CQ_SET_COUNT], *assocs[SLI_MAX_CQ_SET_COUNT];

	/* Initialise CQS pointers to NULL */
	for (i = 0; i < num_cqs; i++) {
		cqs[i] = NULL;
	}

	for (i = 0; i < num_cqs; i++) {
		cq = FUNC4(hw->os, sizeof(*cq), OCS_M_ZERO | OCS_M_NOWAIT);
		if (cq == NULL)
			goto error;

		cqs[i]          = cq;
		cq->eq          = eqs[i];
		cq->type        = SLI_QTYPE_CQ;
		cq->instance    = hw->cq_count++;
		cq->entry_count = entry_count;
		cq->queue       = &hw->cq[cq->instance];
		qs[i]           = cq->queue;
		assocs[i]       = eqs[i]->queue;
		FUNC2(&cq->q_list, hw_q_t, link);
	}

	if (FUNC5(sli4, qs, num_cqs, entry_count, assocs)) {
		FUNC3(NULL, "Failed to create CQ Set. \n");
		goto error;
	}

	for (i = 0; i < num_cqs; i++) {
		hw->hw_cq[cqs[i]->instance] = cqs[i];
		FUNC1(&cqs[i]->eq->cq_list, cqs[i]);
	}

	return 0;

error:
	for (i = 0; i < num_cqs; i++) {
		if (cqs[i]) {
			FUNC0(hw->os, cqs[i], sizeof(*cqs[i]));
			cqs[i] = NULL;
		}
	}
	return -1;
}