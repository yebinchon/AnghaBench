#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int status; int /*<<< orphan*/  path; } ;
union ccb {TYPE_3__ ccb_h; } ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  timeout_t ;
struct fsl_sata_slot {scalar_t__ state; int slot; TYPE_2__* ccb; int /*<<< orphan*/  timeout; struct fsl_sata_channel* ch; } ;
struct fsl_sata_channel {int toslots; int rslots; int /*<<< orphan*/  sim; union ccb* frozen; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int timeout; int target_id; } ;
struct TYPE_5__ {TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CAM_DEV_QFRZN ; 
 int CAM_RELEASE_SIMQ ; 
 int CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  FSL_SATA_P_CAR ; 
 scalar_t__ FSL_SATA_SLOT_EXECUTING ; 
 scalar_t__ FSL_SATA_SLOT_RUNNING ; 
 int SBT_1MS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fsl_sata_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_sata_channel*,union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_sata_channel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct fsl_sata_slot *slot)
{
	struct fsl_sata_channel *ch = slot->ch;
	device_t dev = ch->dev;
	uint32_t sstatus;

	/* Check for stale timeout. */
	if (slot->state < FSL_SATA_SLOT_RUNNING)
		return;

	/* Check if slot was not being executed last time we checked. */
	if (slot->state < FSL_SATA_SLOT_EXECUTING) {
		/* Check if slot started executing. */
		sstatus = FUNC0(ch->r_mem, FSL_SATA_P_CAR);
		if ((sstatus & (1 << slot->slot)) != 0)
			slot->state = FSL_SATA_SLOT_EXECUTING;

		FUNC1(&slot->timeout,
	    	    SBT_1MS * slot->ccb->ccb_h.timeout / 2, 0,
		    (timeout_t*)fsl_sata_timeout, slot, 0);
		return;
	}

	FUNC2(dev, "Timeout on slot %d port %d\n",
	    slot->slot, slot->ccb->ccb_h.target_id & 0x0f);

	/* Handle frozen command. */
	if (ch->frozen) {
		union ccb *fccb = ch->frozen;
		ch->frozen = NULL;
		fccb->ccb_h.status = CAM_REQUEUE_REQ | CAM_RELEASE_SIMQ;
		if (!(fccb->ccb_h.status & CAM_DEV_QFRZN)) {
			FUNC5(fccb->ccb_h.path, 1);
			fccb->ccb_h.status |= CAM_DEV_QFRZN;
		}
		FUNC3(ch, fccb);
	}
	if (ch->toslots == 0)
		FUNC6(ch->sim, 1);
	ch->toslots |= (1 << slot->slot);
	if ((ch->rslots & ~ch->toslots) == 0)
		FUNC4(ch);
	else
		FUNC2(dev, " ... waiting for slots %08x\n",
		    ch->rslots & ~ch->toslots);
}