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
struct TYPE_8__ {int command; int sector_count; int lba_low; int* cdb_bytes; scalar_t__ lba_mid_exp; scalar_t__ lba_mid; scalar_t__ sector_count_exp; int /*<<< orphan*/  flags; } ;
struct ccb_scsiio {int dxfer_len; int cdb_len; TYPE_4__ cdb_io; void* data_ptr; } ;
struct TYPE_5__ {scalar_t__ func_code; int timeout; int recovery_slot; scalar_t__ status; void* flags; int /*<<< orphan*/  recovery_type; } ;
struct ccb_ataio {int dxfer_len; TYPE_4__ cmd; int /*<<< orphan*/ * data_ptr; } ;
union ccb {struct ccb_scsiio csio; TYPE_1__ ccb_h; struct ccb_ataio ataio; } ;
struct siis_channel {int recoverycmd; TYPE_3__** hold; int /*<<< orphan*/  numhslots; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int sense_len; int /*<<< orphan*/  sense_data; } ;
struct TYPE_7__ {TYPE_2__ csio; TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_ATAIO_48BIT ; 
 void* CAM_DIR_IN ; 
 scalar_t__ CAM_RESRC_UNAVAIL ; 
 scalar_t__ CAM_STATUS_MASK ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_SIIS ; 
 int /*<<< orphan*/  RECOVERY_READ_LOG ; 
 int /*<<< orphan*/  RECOVERY_REQUEST_SENSE ; 
 int SIIS_MAX_SLOTS ; 
 scalar_t__ XPT_ATA_IO ; 
 scalar_t__ XPT_SCSI_IO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 struct siis_channel* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,union ccb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 union ccb* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 

__attribute__((used)) static void
FUNC9(device_t dev)
{
	struct siis_channel *ch = FUNC1(dev);
	union ccb *ccb;
	struct ccb_ataio *ataio;
	struct ccb_scsiio *csio;
	int i;

	/* Find some held command. */
	for (i = 0; i < SIIS_MAX_SLOTS; i++) {
		if (ch->hold[i])
			break;
	}
	if (i == SIIS_MAX_SLOTS)
		return;
	ccb = FUNC6();
	if (ccb == NULL) {
		FUNC2(dev, "Unable to allocate recovery command\n");
completeall:
		/* We can't do anything -- complete held commands. */
		for (i = 0; i < SIIS_MAX_SLOTS; i++) {
			if (ch->hold[i] == NULL)
				continue;
			ch->hold[i]->ccb_h.status &= ~CAM_STATUS_MASK;
			ch->hold[i]->ccb_h.status |= CAM_RESRC_UNAVAIL;
			FUNC7(ch->hold[i]);
			ch->hold[i] = NULL;
			ch->numhslots--;
		}
		FUNC5(dev);
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
		ataio->data_ptr = FUNC3(512, M_SIIS, M_NOWAIT);
		if (ataio->data_ptr == NULL) {
			FUNC8(ccb);
			FUNC2(dev,
			    "Unable to allocate memory for READ LOG command\n");
			goto completeall;
		}
		ataio->dxfer_len = 512;
		FUNC0(&ataio->cmd, sizeof(ataio->cmd));
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
		FUNC0(&csio->cdb_io, sizeof(csio->cdb_io));
		csio->cdb_io.cdb_bytes[0] = 0x03;
		csio->cdb_io.cdb_bytes[4] = csio->dxfer_len;
	}
	ch->recoverycmd = 1;
	FUNC4(dev, ccb);
}