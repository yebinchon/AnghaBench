#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_18__ {TYPE_1__* ocs; } ;
typedef  TYPE_2__ ocs_node_t ;
struct TYPE_19__ {int seq_init; int /*<<< orphan*/  init_task_tag; int /*<<< orphan*/  transferred; } ;
typedef  TYPE_3__ ocs_io_t ;
typedef  int /*<<< orphan*/  ocs_hw_t ;
struct TYPE_20__ {TYPE_5__* payload; TYPE_5__* hio; int /*<<< orphan*/  status; } ;
typedef  TYPE_4__ ocs_hw_sequence_t ;
struct TYPE_22__ {int /*<<< orphan*/  len; } ;
struct TYPE_21__ {int /*<<< orphan*/  indicator; TYPE_6__ dma; TYPE_3__* ul_io; } ;
typedef  TYPE_5__ ocs_hw_io_t ;
typedef  TYPE_6__ ocs_dma_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_UNSOL_SUCCESS ; 
 int /*<<< orphan*/  OCS_SCSI_FIRST_BURST_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_5__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC6(ocs_node_t *node, ocs_hw_sequence_t *seq)
{
	ocs_t *ocs = node->ocs;
	ocs_hw_t *hw = &ocs->hw;
	ocs_hw_io_t *hio = seq->hio;
	ocs_io_t	*io;
	ocs_dma_t fburst[1];

	FUNC0(seq->payload, -1);
	FUNC0(hio, -1);

	io = hio->ul_io;
	if (io == NULL) {
		FUNC3(ocs, "data received for NULL io, xri=0x%x\n",
			    hio->indicator);
		return -1;
	}

	/*
	 * We only support data completions for auto xfer ready. Make sure
	 * this is a port owned XRI.
	 */
	if (!FUNC1(hw, seq->hio)) {
		FUNC3(ocs, "data received for host owned XRI, xri=0x%x\n",
			    hio->indicator);
		return -1;
	}

	/* For error statuses, pass the error to the target back end */
	if (seq->status != OCS_HW_UNSOL_SUCCESS) {
		FUNC3(ocs, "data with status 0x%x received, xri=0x%x\n",
			    seq->status, hio->indicator);

		/*
		 * In this case, there is an existing, in-use HW IO that
		 * first may need to be aborted. Then, the backend will be
		 * notified of the error while waiting for the data.
		 */
		FUNC4(ocs, seq->hio);

		/*
		 * HW IO has already been allocated and is waiting for data.
		 * Need to tell backend that an error has occurred.
		 */
		FUNC5(io, 0, NULL, 0, OCS_SCSI_FIRST_BURST_ERR, NULL, 0);
		return -1;
	}

	/* sequence initiative has been transferred */
	io->seq_init = 1;

	/* convert the array of pointers to the correct type, to send to backend */
	fburst[0] = seq->payload->dma;

	/* the amount of first burst data was saved as "acculated sequence length" */
	io->transferred = seq->payload->dma.len;

	if (FUNC5(io, 0, NULL, 0, 0,
					  fburst, io->transferred)) {
		FUNC3(ocs, "error passing first burst, xri=0x%x, oxid=0x%x\n",
			    hio->indicator, io->init_task_tag);
	}

	/* Free the header and all the accumulated payload buffers */
	FUNC2(&ocs->hw, seq);
	return 0;
}