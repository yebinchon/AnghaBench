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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  size_t time_t ;
typedef  int /*<<< orphan*/  sli4_eqe_t ;
struct TYPE_9__ {size_t cq_count; int /*<<< orphan*/  sli; int /*<<< orphan*/  os; int /*<<< orphan*/ * hw_cq; int /*<<< orphan*/  cq_hash; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_10__ {TYPE_3__* queue; } ;
typedef  TYPE_2__ hw_eq_t ;
struct TYPE_11__ {scalar_t__ n_posted; scalar_t__ posted_limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FALSE ; 
 size_t OCS_HW_TIMECHECK_ITERATIONS ; 
 size_t TRUE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

int32_t
FUNC11(ocs_hw_t *hw, hw_eq_t *eq, uint32_t max_isr_time_msec)
{
	uint8_t		eqe[sizeof(sli4_eqe_t)] = { 0 };
	uint32_t	done = FALSE;
	uint32_t	tcheck_count;
	time_t		tstart;
	time_t		telapsed;

	tcheck_count = OCS_HW_TIMECHECK_ITERATIONS;
	tstart = FUNC5();

	FUNC0("");

	while (!done && !FUNC9(&hw->sli, eq->queue, eqe)) {
		uint16_t	cq_id = 0;
		int32_t		rc;

		rc = FUNC6(&hw->sli, eqe, &cq_id);
		if (FUNC10(rc)) {
			if (rc > 0) {
				uint32_t i;

				/*
				 * Received a sentinel EQE indicating the EQ is full.
				 * Process all CQs
				 */
				for (i = 0; i < hw->cq_count; i++) {
					FUNC2(hw, hw->hw_cq[i]);
				}
				continue;
			} else {
				return rc;
			}
		} else {
			int32_t index = FUNC3(hw->cq_hash, cq_id);
			if (FUNC1(index >= 0)) {
				FUNC2(hw, hw->hw_cq[index]);
			} else {
				FUNC4(hw->os, "bad CQ_ID %#06x\n", cq_id);
			}
		}


		if (eq->queue->n_posted > (eq->queue->posted_limit)) {
			FUNC7(&hw->sli, eq->queue, FALSE);
		}

		if (tcheck_count && (--tcheck_count == 0)) {
			tcheck_count = OCS_HW_TIMECHECK_ITERATIONS;
			telapsed = FUNC5() - tstart;
			if (telapsed >= max_isr_time_msec) {
				done = TRUE;
			}
		}
	}
	FUNC8(&hw->sli, eq->queue, TRUE);

	return 0;
}