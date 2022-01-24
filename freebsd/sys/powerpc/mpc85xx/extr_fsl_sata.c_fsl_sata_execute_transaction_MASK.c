#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int target_id; scalar_t__ func_code; int timeout; int /*<<< orphan*/  path; } ;
struct TYPE_8__ {int flags; int control; scalar_t__ command; } ;
struct TYPE_9__ {TYPE_3__ cmd; } ;
union ccb {TYPE_5__ ccb_h; TYPE_4__ ataio; } ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  timeout_t ;
struct TYPE_6__ {int nsegs; } ;
struct fsl_sata_slot {int slot; int ttl; int /*<<< orphan*/  timeout; int /*<<< orphan*/  state; TYPE_1__ dma; union ccb* ccb; struct fsl_sata_channel* ch; } ;
struct fsl_sata_cmd_tab {int* sfis; } ;
struct fsl_sata_cmd_list {void* cda; void* ttl; void* cmd_flags; void* prd_length; void* fis_length; } ;
struct TYPE_7__ {int /*<<< orphan*/  work_map; int /*<<< orphan*/  work_tag; } ;
struct fsl_sata_channel {int rslots; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  dev; TYPE_2__ dma; } ;
typedef  enum fsl_sata_err_type { ____Placeholder_fsl_sata_err_type } fsl_sata_err_type ;

/* Variables and functions */
 int ATA_A_RESET ; 
 scalar_t__ ATA_DEVICE_RESET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int CAM_ATAIO_CONTROL ; 
 int CAM_ATAIO_FPDMA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct fsl_sata_cmd_list* FUNC4 (struct fsl_sata_channel*,struct fsl_sata_slot*) ; 
 int FSL_SATA_CMD_ATAPI ; 
 int FSL_SATA_CMD_QUEUED ; 
 int FSL_SATA_CMD_RESET ; 
 int FSL_SATA_CMD_SNOOP ; 
 int FSL_SATA_CMD_WRITE ; 
 struct fsl_sata_cmd_tab* FUNC5 (struct fsl_sata_channel*,struct fsl_sata_slot*) ; 
 int FUNC6 (struct fsl_sata_channel*,struct fsl_sata_slot*) ; 
 int FSL_SATA_ERR_INVALID ; 
 int FSL_SATA_ERR_NONE ; 
 int FSL_SATA_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FSL_SATA_P_CAR ; 
 int /*<<< orphan*/  FSL_SATA_P_CCR ; 
 int /*<<< orphan*/  FSL_SATA_P_CER ; 
 int /*<<< orphan*/  FSL_SATA_P_CQPMP ; 
 int /*<<< orphan*/  FSL_SATA_P_CQR ; 
 int /*<<< orphan*/  FSL_SATA_P_DER ; 
 int /*<<< orphan*/  FSL_SATA_P_HSTS ; 
 int /*<<< orphan*/  FSL_SATA_P_SERR ; 
 int /*<<< orphan*/  FSL_SATA_P_SIG ; 
 int /*<<< orphan*/  FSL_SATA_P_SSTS ; 
 int /*<<< orphan*/  FSL_SATA_SLOT_RUNNING ; 
 int SBT_1MS ; 
 scalar_t__ XPT_ATA_IO ; 
 scalar_t__ XPT_SCSI_IO ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fsl_sata_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct fsl_sata_slot*,int) ; 
 int FUNC11 (struct fsl_sata_channel*,struct fsl_sata_cmd_tab*,union ccb*,int) ; 
 scalar_t__ fsl_sata_timeout ; 
 void* FUNC12 (int) ; 
 void* FUNC13 (int) ; 

__attribute__((used)) static void
FUNC14(struct fsl_sata_slot *slot)
{
	struct fsl_sata_channel *ch = slot->ch;
	struct fsl_sata_cmd_tab *ctp;
	struct fsl_sata_cmd_list *clp;
	union ccb *ccb = slot->ccb;
	int port = ccb->ccb_h.target_id & 0x0f;
	int fis_size, i, softreset;
	uint32_t tmp;
	uint32_t cmd_flags = FSL_SATA_CMD_WRITE | FSL_SATA_CMD_SNOOP;

	softreset = 0;
	FUNC2(ccb->ccb_h.path, CAM_DEBUG_TRACE,
	    ("fsl_sata_execute_transaction func_code=0x%x\n", ccb->ccb_h.func_code));
	/* Get a piece of the workspace for this request */
	ctp = FUNC5(ch, slot);
	/* Setup the FIS for this request */
	if (!(fis_size = FUNC11(ch, ctp, ccb, slot->slot))) {
		FUNC9(ch->dev, "Setting up SATA FIS failed\n");
		FUNC10(slot, FSL_SATA_ERR_INVALID);
		return;
	}
	/* Setup the command list entry */
	clp = FUNC4(ch, slot);
	clp->fis_length = FUNC12(fis_size);
	clp->prd_length = FUNC12(slot->dma.nsegs);
	/* Special handling for Soft Reset command. */
	if ((ccb->ccb_h.func_code == XPT_ATA_IO) &&
	    (ccb->ataio.cmd.flags & CAM_ATAIO_CONTROL)) {
		if (ccb->ataio.cmd.control & ATA_A_RESET) {
			softreset = 1;
			cmd_flags |= FSL_SATA_CMD_RESET;
		} else {
			/* Prepare FIS receive area for check. */
			for (i = 0; i < 32; i++)
				ctp->sfis[i] = 0xff;
			softreset = 2;
		}
	}
	if (ccb->ataio.cmd.flags & CAM_ATAIO_FPDMA)
		cmd_flags |= FSL_SATA_CMD_QUEUED;
	clp->cmd_flags = FUNC13(cmd_flags |
	    (ccb->ccb_h.func_code == XPT_SCSI_IO ?  FSL_SATA_CMD_ATAPI : 0) |
	    slot->slot);
	clp->ttl = FUNC13(slot->ttl);
	clp->cda = FUNC13(FUNC6(ch, slot));
	FUNC7(ch->dma.work_tag, ch->dma.work_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	/* Issue command to the controller. */
	slot->state = FSL_SATA_SLOT_RUNNING;
	ch->rslots |= (1 << slot->slot);
	FUNC1(ch->r_mem, FSL_SATA_P_CQPMP, port);
	FUNC1(ch->r_mem, FSL_SATA_P_CQR, (1 << slot->slot));
	/* Device reset commands don't interrupt. Poll them. */
	if (ccb->ccb_h.func_code == XPT_ATA_IO &&
	    (ccb->ataio.cmd.command == ATA_DEVICE_RESET || softreset)) {
		int count, timeout = ccb->ccb_h.timeout * 100;
		enum fsl_sata_err_type et = FSL_SATA_ERR_NONE;

		for (count = 0; count < timeout; count++) {
			FUNC3(10);
			tmp = 0;
			if (softreset == 2) {
				tmp = FUNC0(ch->r_mem, FSL_SATA_P_SIG);
				if (tmp != 0 && tmp != 0xffffffff)
					break;
				continue;
			}
			if ((FUNC0(ch->r_mem, FSL_SATA_P_CCR) & (1 << slot->slot)) != 0)
				break;
		}

		if (timeout && (count >= timeout)) {
			FUNC9(ch->dev, "Poll timeout on slot %d port %d (round %d)\n",
			    slot->slot, port, softreset);
			FUNC9(ch->dev, "hsts %08x cqr %08x ccr %08x ss %08x "
			    "rs %08x cer %08x der %08x serr %08x car %08x sig %08x\n",
			    FUNC0(ch->r_mem, FSL_SATA_P_HSTS),
			    FUNC0(ch->r_mem, FSL_SATA_P_CQR),
			    FUNC0(ch->r_mem, FSL_SATA_P_CCR),
			    FUNC0(ch->r_mem, FSL_SATA_P_SSTS), ch->rslots,
			    FUNC0(ch->r_mem, FSL_SATA_P_CER),
			    FUNC0(ch->r_mem, FSL_SATA_P_DER),
			    FUNC0(ch->r_mem, FSL_SATA_P_SERR),
			    FUNC0(ch->r_mem, FSL_SATA_P_CAR),
			    FUNC0(ch->r_mem, FSL_SATA_P_SIG));
			et = FSL_SATA_ERR_TIMEOUT;
		}

		FUNC10(slot, et);
		return;
	}
	/* Start command execution timeout */
	FUNC8(&slot->timeout, SBT_1MS * ccb->ccb_h.timeout / 2,
	    0, (timeout_t*)fsl_sata_timeout, slot, 0);
	return;
}