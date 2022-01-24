#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_9__ ;
typedef  struct TYPE_39__   TYPE_8__ ;
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_28__ ;
typedef  struct TYPE_31__   TYPE_24__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_35__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_4__ ocs_t ;
struct TYPE_36__ {TYPE_4__* ocs; } ;
typedef  TYPE_5__ ocs_node_t ;
struct TYPE_37__ {int /*<<< orphan*/  tgt_task_tag; TYPE_24__* hio; int /*<<< orphan*/  hw_priv; } ;
typedef  TYPE_6__ ocs_io_t ;
struct TYPE_38__ {TYPE_24__* hio; int /*<<< orphan*/  hw_priv; int /*<<< orphan*/  auto_xrdy; TYPE_28__* payload; TYPE_2__* header; } ;
typedef  TYPE_7__ ocs_hw_sequence_t ;
typedef  int int32_t ;
struct TYPE_39__ {int additional_fcp_cdb_length; int /*<<< orphan*/  fcp_cdb; scalar_t__ task_management_flags; int /*<<< orphan*/  fcp_lun; } ;
typedef  TYPE_8__ fcp_cmnd_iu_t ;
struct TYPE_40__ {int /*<<< orphan*/  ox_id; } ;
typedef  TYPE_9__ fc_header_t ;
struct TYPE_34__ {TYPE_8__* virt; } ;
struct TYPE_30__ {TYPE_9__* virt; } ;
struct TYPE_33__ {TYPE_1__ dma; } ;
struct TYPE_32__ {TYPE_3__ dma; } ;
struct TYPE_31__ {int /*<<< orphan*/  indicator; TYPE_6__* ul_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OCS_HW_SEND_FRAME_CAPABLE ; 
 int /*<<< orphan*/  OCS_SCSI_IO_ROLE_RESPONDER ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_28__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_8__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_24__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,TYPE_8__*,TYPE_9__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC12 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_5__*,TYPE_7__*) ; 
 scalar_t__ FUNC16 (TYPE_4__*,TYPE_7__*) ; 

__attribute__((used)) static int32_t
FUNC17(ocs_node_t *node, ocs_hw_sequence_t *seq)
{
	ocs_t *ocs = node->ocs;
	fc_header_t	*fchdr = seq->header->dma.virt;
	fcp_cmnd_iu_t	*cmnd = NULL;
	ocs_io_t	*io = NULL;
	uint64_t	lun = UINT64_MAX;
	int32_t		rc = 0;

	FUNC3(seq->payload, -1);
	cmnd = seq->payload->dma.virt;

	/* perform FCP_CMND validation check(s) */
	if (FUNC16(ocs, seq)) {
		return -1;
	}

	/* make sure first burst or auto xfer_rdy is enabled */
	if (!seq->auto_xrdy) {
		FUNC2(node, "IO is not Auto Xfr Rdy assisted, dropping FCP_CMND\n");
		return -1;
	}

	lun = FUNC0(FUNC1(cmnd->fcp_lun));

	/* TODO should there be a check here for an error? Why do any of the
	 * below if the LUN decode failed? */
	io = FUNC12(node, OCS_SCSI_IO_ROLE_RESPONDER);
	if (io == NULL) {
		uint32_t send_frame_capable;

		/* If we have SEND_FRAME capability, then use it to send task set full or busy */
		rc = FUNC6(&ocs->hw, OCS_HW_SEND_FRAME_CAPABLE, &send_frame_capable);
		if ((rc == 0) && send_frame_capable) {
			rc = FUNC15(node, seq);
			if (rc) {
				FUNC10(ocs, "ocs_sframe_send_task_set_full_or_busy failed: %d\n", rc);
			}
			return rc;
		}

		FUNC9(ocs, "IO allocation failed ox_id %04x\n", FUNC4(fchdr->ox_id));
		return -1;
	}
	io->hw_priv = seq->hw_priv;

	/* RQ pair, if we got here, SIT=0 */
	FUNC11(io, cmnd, fchdr, FALSE);

	if (cmnd->task_management_flags) {
		/* first burst command better not be a TMF */
		FUNC9(ocs, "TMF flags set 0x%x\n", cmnd->task_management_flags);
		FUNC13(io);
		return -1;
	} else {
		uint32_t flags = FUNC5(cmnd);

		/* activate HW IO */
		FUNC7(&ocs->hw, seq->hio);
		io->hio = seq->hio;
		seq->hio->ul_io = io;
		io->tgt_task_tag = seq->hio->indicator;

		/* Note: Data buffers are received in another call */
		FUNC14(io, lun, cmnd->fcp_cdb,
					      sizeof(cmnd->fcp_cdb) +
					      (cmnd->additional_fcp_cdb_length * sizeof(uint32_t)),
					      flags, NULL, 0);
	}

	/* FCP_CMND processed, return RX buffer to the chip */
	FUNC8(&ocs->hw, seq);
	return 0;
}