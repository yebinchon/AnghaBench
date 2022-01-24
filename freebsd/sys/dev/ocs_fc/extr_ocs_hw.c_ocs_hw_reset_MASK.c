#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_13__ {scalar_t__ state; size_t wq_count; size_t rq_count; size_t hw_rq_count; size_t mq_count; size_t cq_count; size_t eq_count; int /*<<< orphan*/ * eq; int /*<<< orphan*/  sli; int /*<<< orphan*/ * cq; int /*<<< orphan*/ * mq; TYPE_2__** hw_rq; int /*<<< orphan*/ * rq; int /*<<< orphan*/ * wq; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_wait_free; int /*<<< orphan*/  io_free; int /*<<< orphan*/  io_timed_wqe; int /*<<< orphan*/  fcf_index_fcfi; int /*<<< orphan*/  domains; int /*<<< orphan*/  os; int /*<<< orphan*/  cmd_head; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  scalar_t__ ocs_hw_state_e ;
typedef  int /*<<< orphan*/  ocs_hw_rtn_e ;
typedef  int ocs_hw_reset_e ;
struct TYPE_14__ {size_t entry_count; int /*<<< orphan*/ ** rq_tracker; } ;
typedef  TYPE_2__ hw_rq_t ;

/* Variables and functions */
#define  OCS_HW_RESET_FIRMWARE 129 
#define  OCS_HW_RESET_FUNCTION 128 
 int /*<<< orphan*/  OCS_HW_RTN_ERROR ; 
 int /*<<< orphan*/  OCS_HW_RTN_SUCCESS ; 
 scalar_t__ OCS_HW_STATE_ACTIVE ; 
 scalar_t__ OCS_HW_STATE_QUEUES_ALLOCATED ; 
 scalar_t__ OCS_HW_STATE_RESET_IN_PROGRESS ; 
 scalar_t__ OCS_HW_STATE_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

ocs_hw_rtn_e
FUNC21(ocs_hw_t *hw, ocs_hw_reset_e reset)
{
	uint32_t	i;
	ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
	uint32_t	iters;
	ocs_hw_state_e prev_state = hw->state;

	if (hw->state != OCS_HW_STATE_ACTIVE) {
		FUNC13(hw->os, "HW state %d is not active\n", hw->state);
	}

	hw->state = OCS_HW_STATE_RESET_IN_PROGRESS;

	/* shutdown target wqe timer */
	FUNC17(hw);

	FUNC2(hw);

	/*
	 * If an mailbox command requiring a DMA is outstanding (i.e. SFP/DDM),
	 * then the FW will UE when the reset is issued. So attempt to complete
	 * all mailbox commands.
	 */
	iters = 10;
	while (!FUNC8(&hw->cmd_head) && iters) {
		FUNC15(10000);
		FUNC2(hw);
		iters--;
	}

	if (FUNC8(&hw->cmd_head)) {
		FUNC11(hw->os, "All commands completed on MQ queue\n");
	} else {
		FUNC11(hw->os, "Some commands still pending on MQ queue\n");
	}

	/* Reset the chip */
	switch(reset) {
	case OCS_HW_RESET_FUNCTION:
		FUNC11(hw->os, "issuing function level reset\n");
		if (FUNC20(&hw->sli)) {
			FUNC12(hw->os, "sli_reset failed\n");
			rc = OCS_HW_RTN_ERROR;
		}
		break;
	case OCS_HW_RESET_FIRMWARE:
		FUNC11(hw->os, "issuing firmware reset\n");
		if (FUNC18(&hw->sli)) {
			FUNC12(hw->os, "sli_soft_reset failed\n");
			rc = OCS_HW_RTN_ERROR;
		}
		/*
		 * Because the FW reset leaves the FW in a non-running state,
		 * follow that with a regular reset.
		 */
		FUNC11(hw->os, "issuing function level reset\n");
		if (FUNC20(&hw->sli)) {
			FUNC12(hw->os, "sli_reset failed\n");
			rc = OCS_HW_RTN_ERROR;
		}
		break;
	default:
		FUNC13(hw->os, "unknown reset type - no reset performed\n");
		hw->state = prev_state;
		return OCS_HW_RTN_ERROR;
	}

	/* Not safe to walk command/io lists unless they've been initialized */
	if (prev_state != OCS_HW_STATE_UNINITIALIZED) {
		FUNC1(hw);

		/* Clean up the inuse list, the free list and the wait free list */
		FUNC3(hw);

		FUNC14(hw->domains, 0, sizeof(hw->domains));
		FUNC14(hw->fcf_index_fcfi, 0, sizeof(hw->fcf_index_fcfi));

		FUNC4(hw);

		FUNC10(&hw->io_lock);
			/* The io lists should be empty, but remove any that didn't get cleaned up. */
			while (!FUNC8(&hw->io_timed_wqe)) {
				FUNC9(&hw->io_timed_wqe);
			}
			/* Don't clean up the io_inuse list, the backend will do that when it finishes the IO */

			while (!FUNC8(&hw->io_free)) {
				FUNC9(&hw->io_free);
			}
			while (!FUNC8(&hw->io_wait_free)) {
				FUNC9(&hw->io_wait_free);
			}

			/* Reset the request tag pool, the HW IO request tags are reassigned in ocs_hw_setup_io() */
			FUNC5(hw);

		FUNC16(&hw->io_lock);
	}

	if (prev_state != OCS_HW_STATE_UNINITIALIZED) {
		for (i = 0; i < hw->wq_count; i++) {
			FUNC19(&hw->sli, &hw->wq[i]);
		}

		for (i = 0; i < hw->rq_count; i++) {
			FUNC19(&hw->sli, &hw->rq[i]);
		}

		for (i = 0; i < hw->hw_rq_count; i++) {
			hw_rq_t *rq = hw->hw_rq[i];
			if (rq->rq_tracker != NULL) {
				uint32_t j;

				for (j = 0; j < rq->entry_count; j++) {
					rq->rq_tracker[j] = NULL;
				}
			}
		}

		for (i = 0; i < hw->mq_count; i++) {
			FUNC19(&hw->sli, &hw->mq[i]);
		}

		for (i = 0; i < hw->cq_count; i++) {
			FUNC19(&hw->sli, &hw->cq[i]);
		}

		for (i = 0; i < hw->eq_count; i++) {
			FUNC19(&hw->sli, &hw->eq[i]);
		}

		/* Free rq buffers */
		FUNC6(hw);

		/* Teardown the HW queue topology */
		FUNC0(hw);
	} else {

		/* Free rq buffers */
		FUNC6(hw);
	}

	/*
	 * Re-apply the run-time workarounds after clearing the SLI config
	 * fields in sli_reset.
	 */
	FUNC7(hw);
	hw->state = OCS_HW_STATE_QUEUES_ALLOCATED;

	return rc;
}