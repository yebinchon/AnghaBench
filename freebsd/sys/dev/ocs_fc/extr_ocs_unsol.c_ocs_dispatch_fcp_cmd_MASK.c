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
typedef  struct TYPE_32__   TYPE_29__ ;
typedef  struct TYPE_31__   TYPE_1__ ;
typedef  struct TYPE_30__   TYPE_10__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct TYPE_35__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_4__ ocs_t ;
struct TYPE_36__ {TYPE_4__* ocs; } ;
typedef  TYPE_5__ ocs_node_t ;
struct TYPE_37__ {scalar_t__ app_id; int /*<<< orphan*/  hw_priv; } ;
typedef  TYPE_6__ ocs_io_t ;
struct TYPE_38__ {int /*<<< orphan*/  hw_priv; TYPE_29__* payload; TYPE_2__* header; } ;
typedef  TYPE_7__ ocs_hw_sequence_t ;
typedef  int int32_t ;
struct TYPE_39__ {int additional_fcp_cdb_length; int /*<<< orphan*/  fcp_cdb; scalar_t__ task_management_flags; int /*<<< orphan*/  fcp_lun; } ;
typedef  TYPE_8__ fcp_cmnd_iu_t ;
struct TYPE_40__ {int /*<<< orphan*/  src_vmid; } ;
typedef  TYPE_9__ fc_vm_header_t ;
struct TYPE_30__ {int df_ctl; int /*<<< orphan*/  ox_id; } ;
typedef  TYPE_10__ fc_header_t ;
struct TYPE_34__ {TYPE_8__* virt; } ;
struct TYPE_31__ {TYPE_10__* virt; } ;
struct TYPE_33__ {TYPE_1__ dma; } ;
struct TYPE_32__ {TYPE_3__ dma; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FC_DFCTL_DEVICE_HDR_16_MASK ; 
 int FC_DFCTL_ESP_HDR_MASK ; 
 int FC_DFCTL_ESP_HDR_SIZE ; 
 int FC_DFCTL_NETWORK_HDR_MASK ; 
 int FC_DFCTL_NETWORK_HDR_SIZE ; 
 int /*<<< orphan*/  OCS_HW_SEND_FRAME_CAPABLE ; 
 int /*<<< orphan*/  OCS_SCSI_IO_ROLE_RESPONDER ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_29__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,scalar_t__,TYPE_5__*,scalar_t__) ; 
 int FUNC6 (TYPE_8__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,TYPE_8__*,TYPE_10__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC12 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int FUNC14 (TYPE_5__*,TYPE_7__*) ; 
 scalar_t__ FUNC15 (TYPE_4__*,TYPE_7__*) ; 

__attribute__((used)) static int32_t
FUNC16(ocs_node_t *node, ocs_hw_sequence_t *seq)
{
	ocs_t *ocs = node->ocs;
	fc_header_t	*fchdr = seq->header->dma.virt;
	fcp_cmnd_iu_t	*cmnd = NULL;
	ocs_io_t	*io = NULL;
	fc_vm_header_t 	*vhdr;
	uint8_t 	df_ctl;
	uint64_t	lun = UINT64_MAX;
	int32_t		rc = 0;

	FUNC2(seq->payload, -1);
	cmnd = seq->payload->dma.virt;

	/* perform FCP_CMND validation check(s) */
	if (FUNC15(ocs, seq)) {
		return -1;
	}

	lun = FUNC0(FUNC1(cmnd->fcp_lun));
	if (lun == UINT64_MAX) {
		return -1;
	}

	io = FUNC12(node, OCS_SCSI_IO_ROLE_RESPONDER);
	if (io == NULL) {
		uint32_t send_frame_capable;

		/* If we have SEND_FRAME capability, then use it to send task set full or busy */
		rc = FUNC7(&ocs->hw, OCS_HW_SEND_FRAME_CAPABLE, &send_frame_capable);
		if ((rc == 0) && send_frame_capable) {
			rc = FUNC14(node, seq);
			if (rc) {
				FUNC10(ocs, "ocs_sframe_send_task_set_full_or_busy failed: %d\n", rc);
			}
			return rc;
		}

		FUNC9(ocs, "IO allocation failed ox_id %04x\n", FUNC3(fchdr->ox_id));
		return -1;
	}
	io->hw_priv = seq->hw_priv;

	/* Check if the CMD has vmheader. */
	io->app_id = 0;
	df_ctl = fchdr->df_ctl;
	if (df_ctl & FC_DFCTL_DEVICE_HDR_16_MASK) {
		uint32_t vmhdr_offset = 0;
		/* Presence of VMID. Get the vm header offset. */
		if (df_ctl & FC_DFCTL_ESP_HDR_MASK) {
			vmhdr_offset += FC_DFCTL_ESP_HDR_SIZE;
			FUNC9(ocs, "ESP Header present. Fix ESP Size.\n");
		}

		if (df_ctl & FC_DFCTL_NETWORK_HDR_MASK) {
			vmhdr_offset += FC_DFCTL_NETWORK_HDR_SIZE;
		}
		vhdr = (fc_vm_header_t *) ((char *)fchdr + sizeof(fc_header_t) + vmhdr_offset);
		io->app_id = FUNC4(vhdr->src_vmid);
	}

	/* RQ pair, if we got here, SIT=1 */
	FUNC11(io, cmnd, fchdr, TRUE);

	if (cmnd->task_management_flags) {
		FUNC5(io, cmnd->task_management_flags, node, lun);
	} else {
		uint32_t flags = FUNC6(cmnd);

		/* can return failure for things like task set full and UAs,
		 * no need to treat as a dropped frame if rc != 0
		 */
		FUNC13(io, lun, cmnd->fcp_cdb,
				  sizeof(cmnd->fcp_cdb) +
				  (cmnd->additional_fcp_cdb_length * sizeof(uint32_t)),
				  flags);
	}

	/* successfully processed, now return RX buffer to the chip */
	FUNC8(&ocs->hw, seq);
	return 0;
}