#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int command; int sector_count; int lba_low; int* cdb_bytes; scalar_t__ lba_mid_exp; scalar_t__ lba_mid; scalar_t__ sector_count_exp; int /*<<< orphan*/  flags; } ;
struct ccb_scsiio {int dxfer_len; int cdb_len; TYPE_3__ cdb_io; void* data_ptr; } ;
struct TYPE_5__ {scalar_t__ func_code; int timeout; int recovery_slot; scalar_t__ status; void* flags; int /*<<< orphan*/  recovery_type; } ;
struct ccb_ataio {int dxfer_len; TYPE_3__ cmd; int /*<<< orphan*/ * data_ptr; } ;
union ccb {struct ccb_scsiio csio; TYPE_1__ ccb_h; struct ccb_ataio ataio; } ;
struct ahci_channel {int numslots; int recoverycmd; int /*<<< orphan*/  sim; TYPE_4__** hold; int /*<<< orphan*/  dev; int /*<<< orphan*/  numhslots; } ;
struct TYPE_6__ {int sense_len; int /*<<< orphan*/  sense_data; } ;
struct TYPE_8__ {TYPE_2__ csio; TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_ATAIO_48BIT ; 
 void* CAM_DIR_IN ; 
 scalar_t__ CAM_RESRC_UNAVAIL ; 
 scalar_t__ CAM_STATUS_MASK ; 
 int /*<<< orphan*/  M_AHCI ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  RECOVERY_READ_LOG ; 
 int /*<<< orphan*/  RECOVERY_REQUEST_SENSE ; 
 scalar_t__ XPT_ATA_IO ; 
 scalar_t__ XPT_SCSI_IO ; 
 int /*<<< orphan*/  FUNC0 (struct ahci_channel*,union ccb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_channel*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_channel*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 union ccb* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct ahci_channel *ch)
{
	union ccb *ccb;
	struct ccb_ataio *ataio;
	struct ccb_scsiio *csio;
	int i;

	/* Find some held command. */
	for (i = 0; i < ch->numslots; i++) {
		if (ch->hold[i])
			break;
	}
	ccb = FUNC6();
	if (ccb == NULL) {
		FUNC4(ch->dev, "Unable to allocate recovery command\n");
completeall:
		/* We can't do anything -- complete held commands. */
		for (i = 0; i < ch->numslots; i++) {
			if (ch->hold[i] == NULL)
				continue;
			ch->hold[i]->ccb_h.status &= ~CAM_STATUS_MASK;
			ch->hold[i]->ccb_h.status |= CAM_RESRC_UNAVAIL;
			FUNC1(ch, ch->hold[i]);
			ch->hold[i] = NULL;
			ch->numhslots--;
		}
		FUNC2(ch);
		return;
	}
	ccb->ccb_h = ch->hold[i]->ccb_h;	/* Reuse old header. */
	if (ccb->ccb_h.func_code == XPT_ATA_IO) {
		/* READ LOG */
		ccb->ccb_h.recovery_type = RECOVERY_READ_LOG;
		ccb->ccb_h.func_code = XPT_ATA_IO;
		ccb->ccb_h.flags = CAM_DIR_IN;
		ccb->ccb_h.timeout = 1000;	/* 1s should be enough. */
		ataio = &ccb->ataio;
		ataio->data_ptr = FUNC5(512, M_AHCI, M_NOWAIT);
		if (ataio->data_ptr == NULL) {
			FUNC7(ccb);
			FUNC4(ch->dev,
			    "Unable to allocate memory for READ LOG command\n");
			goto completeall;
		}
		ataio->dxfer_len = 512;
		FUNC3(&ataio->cmd, sizeof(ataio->cmd));
		ataio->cmd.flags = CAM_ATAIO_48BIT;
		ataio->cmd.command = 0x2F;	/* READ LOG EXT */
		ataio->cmd.sector_count = 1;
		ataio->cmd.sector_count_exp = 0;
		ataio->cmd.lba_low = 0x10;
		ataio->cmd.lba_mid = 0;
		ataio->cmd.lba_mid_exp = 0;
	} else {
		/* REQUEST SENSE */
		ccb->ccb_h.recovery_type = RECOVERY_REQUEST_SENSE;
		ccb->ccb_h.recovery_slot = i;
		ccb->ccb_h.func_code = XPT_SCSI_IO;
		ccb->ccb_h.flags = CAM_DIR_IN;
		ccb->ccb_h.status = 0;
		ccb->ccb_h.timeout = 1000;	/* 1s should be enough. */
		csio = &ccb->csio;
		csio->data_ptr = (void *)&ch->hold[i]->csio.sense_data;
		csio->dxfer_len = ch->hold[i]->csio.sense_len;
		csio->cdb_len = 6;
		FUNC3(&csio->cdb_io, sizeof(csio->cdb_io));
		csio->cdb_io.cdb_bytes[0] = 0x03;
		csio->cdb_io.cdb_bytes[4] = csio->dxfer_len;
	}
	/* Freeze SIM while doing recovery. */
	ch->recoverycmd = 1;
	FUNC8(ch->sim, 1);
	FUNC0(ch, ccb);
}