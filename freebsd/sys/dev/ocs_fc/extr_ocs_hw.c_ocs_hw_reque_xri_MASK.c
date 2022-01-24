#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  wqe_size; } ;
struct TYPE_20__ {TYPE_1__ config; } ;
struct TYPE_18__ {int /*<<< orphan*/  os; int /*<<< orphan*/ * tcmd_wq_submit; int /*<<< orphan*/  io_port_dnrx; int /*<<< orphan*/  auto_xfer_rdy_buf_pool; TYPE_4__ sli; } ;
typedef  TYPE_2__ ocs_hw_t ;
struct TYPE_16__ {int /*<<< orphan*/  wqebuf; } ;
struct TYPE_19__ {TYPE_14__ wqe; TYPE_10__* wq; int /*<<< orphan*/ * axr_buf; int /*<<< orphan*/  indicator; int /*<<< orphan*/  type; scalar_t__ auto_xfer_rdy_dnrx; } ;
typedef  TYPE_3__ ocs_hw_io_t ;
typedef  int int32_t ;
struct TYPE_15__ {size_t instance; int /*<<< orphan*/  use_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_IO_DNRX_REQUEUE ; 
 int /*<<< orphan*/  OCS_HW_REQUE_XRI_REGTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLI4_CQ_DEFAULT ; 
 int FUNC1 (TYPE_10__*,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int32_t 
FUNC9( ocs_hw_t *hw, ocs_hw_io_t *io )
{
	int32_t rc = 0;

	rc = FUNC4(hw, io, 1);
	if (rc) {
		FUNC5(&hw->io_port_dnrx, io);
		rc = -1;
		goto exit_ocs_hw_reque_xri;
	}

	io->auto_xfer_rdy_dnrx = 0;
	io->type = OCS_HW_IO_DNRX_REQUEUE;
	if (FUNC8(&hw->sli, io->wqe.wqebuf, hw->sli.config.wqe_size, io->indicator, OCS_HW_REQUE_XRI_REGTAG, SLI4_CQ_DEFAULT)) {
		/* Clear buffer from XRI */
		FUNC7(hw->auto_xfer_rdy_buf_pool, io->axr_buf);
		io->axr_buf = NULL;

		FUNC6(hw->os, "requeue_xri WQE error\n");
		FUNC5(&hw->io_port_dnrx, io);

		rc = -1;
		goto exit_ocs_hw_reque_xri;
	}

	if (io->wq == NULL) {
		io->wq = FUNC3(hw, io);
		FUNC2(io->wq != NULL);
	}

	/*
	 * Add IO to active io wqe list before submitting, in case the
	 * wcqe processing preempts this thread.
	 */
	FUNC0(hw->tcmd_wq_submit[io->wq->instance]++);
	FUNC0(io->wq->use_count++);
	
	rc = FUNC1(io->wq, &io->wqe);
	if (rc < 0) {
		FUNC6(hw->os, "sli_queue_write reque xri failed: %d\n", rc);
		rc = -1;
	}

exit_ocs_hw_reque_xri:
	return 0;
}