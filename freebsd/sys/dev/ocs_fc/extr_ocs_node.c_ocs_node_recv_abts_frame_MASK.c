#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_27__ {int /*<<< orphan*/  io_alloc_failed_count; } ;
typedef  TYPE_3__ ocs_xport_t ;
struct TYPE_28__ {int /*<<< orphan*/  hw; TYPE_3__* xport; } ;
typedef  TYPE_4__ ocs_t ;
struct TYPE_29__ {int /*<<< orphan*/  abort_cnt; TYPE_4__* ocs; } ;
typedef  TYPE_5__ ocs_node_t ;
struct TYPE_30__ {TYPE_11__* io; int /*<<< orphan*/  payload; TYPE_2__* header; } ;
typedef  TYPE_6__ ocs_node_cb_t ;
struct TYPE_31__ {int /*<<< orphan*/  hw_priv; int /*<<< orphan*/  payload; TYPE_2__* header; } ;
typedef  TYPE_7__ ocs_hw_sequence_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_32__ {int /*<<< orphan*/  rx_id; int /*<<< orphan*/  ox_id; int /*<<< orphan*/  d_id; int /*<<< orphan*/  s_id; } ;
typedef  TYPE_8__ fc_header_t ;
typedef  int /*<<< orphan*/  cbdata ;
struct TYPE_25__ {TYPE_8__* virt; } ;
struct TYPE_26__ {TYPE_1__ dma; } ;
struct TYPE_24__ {int seq_init; int /*<<< orphan*/  cmd_tgt; TYPE_5__* node; TYPE_4__* ocs; int /*<<< orphan*/  hw_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_EVT_ABTS_RCVD ; 
 int /*<<< orphan*/  OCS_HW_SEND_FRAME_CAPABLE ; 
 int /*<<< orphan*/  OCS_SCSI_IO_ROLE_RESPONDER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 TYPE_11__* FUNC11 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_5__*,TYPE_7__*) ; 

int32_t
FUNC13(ocs_node_t *node, ocs_hw_sequence_t *seq)
{
	ocs_t *ocs = node->ocs;
	ocs_xport_t *xport = ocs->xport;
	fc_header_t *hdr = seq->header->dma.virt;
	uint16_t ox_id = FUNC3(hdr->ox_id);
	uint16_t rx_id = FUNC3(hdr->rx_id);
	ocs_node_cb_t cbdata;
	int32_t rc = 0;

	node->abort_cnt++;

	/*
	 * Check to see if the IO we want to abort is active, if it not active,
	 * then we can send the BA_ACC using the send frame option
	 */
	if (FUNC6(ocs, node, ox_id, rx_id) == NULL) {
		uint32_t send_frame_capable;

		FUNC7(ocs, "IO not found (ox_id %04x)\n", ox_id);

		/* If we have SEND_FRAME capability, then use it to send BA_ACC */
		rc = FUNC4(&ocs->hw, OCS_HW_SEND_FRAME_CAPABLE, &send_frame_capable);
		if ((rc == 0) && send_frame_capable) {
			rc = FUNC12(node, seq);
			if (rc) {
				FUNC8(ocs, "ocs_bls_acc_send_frame failed\n");
			}
			return rc;
		}
		/* continuing */
	}

	FUNC9(&cbdata, 0, sizeof(cbdata));
	cbdata.header = seq->header;
	cbdata.payload = seq->payload;

	cbdata.io = FUNC11(node, OCS_SCSI_IO_ROLE_RESPONDER);
	if (cbdata.io != NULL) {
		cbdata.io->hw_priv = seq->hw_priv;
		/* If we got this far, SIT=1 */
		cbdata.io->seq_init = 1;

		/* fill out generic fields */
		cbdata.io->ocs = ocs;
		cbdata.io->node = node;
		cbdata.io->cmd_tgt = TRUE;

		FUNC10(node, OCS_EVT_ABTS_RCVD, &cbdata);
	} else {
		FUNC2(&xport->io_alloc_failed_count, 1);
		FUNC1(node, "SCSI IO allocation failed for ABTS received s_id %06x d_id %06x ox_id %04x rx_id %04x\n",
			    FUNC0(hdr->s_id), FUNC0(hdr->d_id), FUNC3(hdr->ox_id), FUNC3(hdr->rx_id));
	}

	/* ABTS processed, return RX buffer to the chip */
	FUNC5(&ocs->hw, seq);
	return 0;
}