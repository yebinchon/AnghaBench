#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ time_t ;
typedef  int sli4_qentry_e ;
typedef  int /*<<< orphan*/  sli4_mcqe_t ;
struct TYPE_21__ {int /*<<< orphan*/  sli; int /*<<< orphan*/  os; TYPE_2__** hw_wq; int /*<<< orphan*/  wq_hash; int /*<<< orphan*/  mq; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  int int32_t ;
struct TYPE_22__ {int /*<<< orphan*/  wqec_set_count; } ;
typedef  TYPE_2__ hw_wq_t ;
struct TYPE_23__ {TYPE_4__* queue; } ;
typedef  TYPE_3__ hw_cq_t ;
struct TYPE_24__ {scalar_t__ proc_limit; scalar_t__ n_posted; scalar_t__ posted_limit; scalar_t__ max_num_processed; scalar_t__ max_process_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
#define  SLI_QENTRY_ASYNC 135 
#define  SLI_QENTRY_MQ 134 
#define  SLI_QENTRY_OPT_WRITE_CMD 133 
#define  SLI_QENTRY_OPT_WRITE_DATA 132 
#define  SLI_QENTRY_RQ 131 
#define  SLI_QENTRY_WQ 130 
#define  SLI_QENTRY_WQ_RELEASE 129 
#define  SLI_QENTRY_XABT 128 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ UINT16_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 scalar_t__ FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

void
FUNC17(ocs_hw_t *hw, hw_cq_t *cq)
{
	uint8_t		cqe[sizeof(sli4_mcqe_t)];
	uint16_t	rid = UINT16_MAX;
	sli4_qentry_e	ctype;		/* completion type */
	int32_t		status;
	uint32_t	n_processed = 0;
	time_t		tstart;
	time_t		telapsed;

	tstart = FUNC11();

	while (!FUNC15(&hw->sli, cq->queue, cqe)) {
		status = FUNC12(&hw->sli, cq->queue, cqe, &ctype, &rid);
		/*
		 * The sign of status is significant. If status is:
		 * == 0 : call completed correctly and the CQE indicated success
		 *  > 0 : call completed correctly and the CQE indicated an error
		 *  < 0 : call failed and no information is available about the CQE
		 */
		if (status < 0) {
			if (status == -2) {
				/* Notification that an entry was consumed, but not completed */
				continue;
			}

			break;
		}

		switch (ctype) {
		case SLI_QENTRY_ASYNC:
			FUNC0("async");
			FUNC13(&hw->sli, cqe);
			break;
		case SLI_QENTRY_MQ:
			/*
			 * Process MQ entry. Note there is no way to determine
			 * the MQ_ID from the completion entry.
			 */
			FUNC0("mq");
			FUNC2(hw, status, hw->mq);
			break;
		case SLI_QENTRY_OPT_WRITE_CMD:
			FUNC4(hw, cq, cqe);
			break;
		case SLI_QENTRY_OPT_WRITE_DATA:
			FUNC5(hw, cq, cqe);
			break;
		case SLI_QENTRY_WQ:
			FUNC0("wq");
			FUNC7(hw, cq, cqe, status, rid);
			break;
		case SLI_QENTRY_WQ_RELEASE: {
			uint32_t wq_id = rid;
			int32_t index = FUNC3(hw->wq_hash, wq_id);

			if (FUNC16(index < 0)) {
				FUNC9(hw->os, "unknown idx=%#x rid=%#x\n",
					    index, rid);
				break;
			}

			hw_wq_t *wq = hw->hw_wq[index];

			/* Submit any HW IOs that are on the WQ pending list */
			FUNC1(wq, wq->wqec_set_count);

			break;
		}

		case SLI_QENTRY_RQ:
			FUNC0("rq");
			FUNC6(hw, cq, cqe);
			break;
		case SLI_QENTRY_XABT: {
			FUNC0("xabt");
			FUNC8(hw, cq, cqe, rid);
			break;

		}
		default:
			FUNC10(hw->os, "unhandled ctype=%#x rid=%#x\n", ctype, rid);
			break;
		}

		n_processed++;
		if (n_processed == cq->queue->proc_limit) {
			break;
		}

		if (cq->queue->n_posted >= (cq->queue->posted_limit)) {
			FUNC14(&hw->sli, cq->queue, FALSE);
		}
	}

	FUNC14(&hw->sli, cq->queue, TRUE);

	if (n_processed > cq->queue->max_num_processed) {
		cq->queue->max_num_processed = n_processed;
	}
	telapsed = FUNC11() - tstart;
	if (telapsed > cq->queue->max_process_time) {
		cq->queue->max_process_time = telapsed;
	}
}