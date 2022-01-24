#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_19__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_23__ {int /*<<< orphan*/  wqe_size; } ;
struct TYPE_28__ {TYPE_1__ config; } ;
struct TYPE_26__ {int /*<<< orphan*/  os; TYPE_6__ sli; int /*<<< orphan*/  io_inuse; int /*<<< orphan*/  sec_hio_wait_list; } ;
typedef  TYPE_4__ ocs_hw_t ;
struct TYPE_22__ {int /*<<< orphan*/  wqebuf; } ;
struct TYPE_24__ {int /*<<< orphan*/  app_id; int /*<<< orphan*/  cs_ctl; int /*<<< orphan*/  blk_size; int /*<<< orphan*/  dif_oper; int /*<<< orphan*/  ox_id; int /*<<< orphan*/  offset; int /*<<< orphan*/  timeout; int /*<<< orphan*/  flags; } ;
struct TYPE_25__ {TYPE_2__ fcp_tgt; } ;
struct TYPE_27__ {void* xbusy; TYPE_19__ wqe; int /*<<< orphan*/ * wq; TYPE_3__ sec_iparam; TYPE_7__* rnode; int /*<<< orphan*/  reqtag; int /*<<< orphan*/  indicator; int /*<<< orphan*/  sec_len; int /*<<< orphan*/  first_data_sge; int /*<<< orphan*/  def_sgl; struct TYPE_27__* sec_hio; int /*<<< orphan*/  tgt_wqe_timeout; void* quarantine; int /*<<< orphan*/  state; } ;
typedef  TYPE_5__ ocs_hw_io_t ;
struct TYPE_29__ {int /*<<< orphan*/  indicator; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  OCS_HW_IO_STATE_INUSE ; 
 int /*<<< orphan*/  SLI4_CQ_DEFAULT ; 
 int /*<<< orphan*/  SLI4_IO_CONTINUATION ; 
 void* TRUE ; 
 TYPE_5__* FUNC0 (TYPE_4__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_19__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(ocs_hw_t *hw)
{
	ocs_hw_io_t *io;
	ocs_hw_io_t *sec_io;
	int rc = 0;

	while (!FUNC7(&hw->sec_hio_wait_list)) {
		uint16_t flags;

		sec_io = FUNC0(hw);
		if (sec_io == NULL) {
			break;
		}

		io = FUNC8(&hw->sec_hio_wait_list);
		FUNC6(&hw->io_inuse, io);
		io->state = OCS_HW_IO_STATE_INUSE;
		io->sec_hio = sec_io;

		/* mark secondary XRI for second and subsequent data phase as quarantine */
		if (io->xbusy) {
			sec_io->quarantine = TRUE;
		}

		flags = io->sec_iparam.fcp_tgt.flags;
		if (io->xbusy) {
			flags |= SLI4_IO_CONTINUATION;
		} else {
			flags &= ~SLI4_IO_CONTINUATION;
		}

		io->tgt_wqe_timeout = io->sec_iparam.fcp_tgt.timeout;

		/* Complete (continue) TRECV IO */
		if (io->xbusy) {
			if (FUNC11(&hw->sli, io->wqe.wqebuf, hw->sli.config.wqe_size, &io->def_sgl,
				io->first_data_sge,
				io->sec_iparam.fcp_tgt.offset, io->sec_len, io->indicator, io->sec_hio->indicator,
				io->reqtag, SLI4_CQ_DEFAULT,
				io->sec_iparam.fcp_tgt.ox_id, io->rnode->indicator, io->rnode,
				flags,
				io->sec_iparam.fcp_tgt.dif_oper, io->sec_iparam.fcp_tgt.blk_size, io->sec_iparam.fcp_tgt.cs_ctl, io->sec_iparam.fcp_tgt.app_id)) {
					FUNC10(hw->os, "TRECEIVE WQE error\n");
					break;
			}
		} else {
			if (FUNC12(&hw->sli, io->wqe.wqebuf, hw->sli.config.wqe_size, &io->def_sgl,
				io->first_data_sge,
				io->sec_iparam.fcp_tgt.offset, io->sec_len, io->indicator,
				io->reqtag, SLI4_CQ_DEFAULT,
				io->sec_iparam.fcp_tgt.ox_id, io->rnode->indicator, io->rnode,
				flags,
				io->sec_iparam.fcp_tgt.dif_oper, io->sec_iparam.fcp_tgt.blk_size,
				io->sec_iparam.fcp_tgt.cs_ctl, io->sec_iparam.fcp_tgt.app_id)) {
					FUNC10(hw->os, "TRECEIVE WQE error\n");
					break;
			}
		}

		if (io->wq == NULL) {
			io->wq = FUNC4(hw, io);
			FUNC3(io->wq != NULL);
		}
		io->xbusy = TRUE;

		/*
		 * Add IO to active io wqe list before submitting, in case the
		 * wcqe processing preempts this thread.
		 */
		FUNC2(hw, io);
		rc = FUNC1(io->wq, &io->wqe);
		if (rc >= 0) {
			/* non-negative return is success */
			rc = 0;
		} else {
			/* failed to write wqe, remove from active wqe list */
			FUNC9(hw->os, "sli_queue_write failed: %d\n", rc);
			io->xbusy = FALSE;
			FUNC5(hw, io);
		}
	}
}