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
struct TYPE_7__ {int status; int /*<<< orphan*/  path; } ;
union ccb {TYPE_3__ ccb_h; } ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  timeout_t ;
struct ahci_slot {scalar_t__ state; int slot; TYPE_2__* ccb; int /*<<< orphan*/  timeout; struct ahci_channel* ch; } ;
struct ahci_channel {int wrongccs; int rslots; int fatalerr; int numslots; int toslots; int /*<<< orphan*/  sim; TYPE_4__* slot; scalar_t__ fbs_enabled; union ccb* frozen; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_5__ {int timeout; int target_id; } ;
struct TYPE_6__ {TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_ERR_INNOCENT ; 
 int /*<<< orphan*/  AHCI_ERR_TIMEOUT ; 
 int /*<<< orphan*/  AHCI_P_CI ; 
 int /*<<< orphan*/  AHCI_P_CMD ; 
 int AHCI_P_CMD_CCS_MASK ; 
 int AHCI_P_CMD_CCS_SHIFT ; 
 int /*<<< orphan*/  AHCI_P_IS ; 
 int /*<<< orphan*/  AHCI_P_SACT ; 
 int /*<<< orphan*/  AHCI_P_SERR ; 
 int /*<<< orphan*/  AHCI_P_TFD ; 
 scalar_t__ AHCI_SLOT_EXECUTING ; 
 scalar_t__ AHCI_SLOT_RUNNING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CAM_DEV_QFRZN ; 
 int CAM_RELEASE_SIMQ ; 
 int CAM_REQUEUE_REQ ; 
 int SBT_1MS ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_channel*,union ccb*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahci_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ahci_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct ahci_slot *slot)
{
	struct ahci_channel *ch = slot->ch;
	device_t dev = ch->dev;
	uint32_t sstatus;
	int ccs;
	int i;

	/* Check for stale timeout. */
	if (slot->state < AHCI_SLOT_RUNNING)
		return;

	/* Check if slot was not being executed last time we checked. */
	if (slot->state < AHCI_SLOT_EXECUTING) {
		/* Check if slot started executing. */
		sstatus = FUNC0(ch->r_mem, AHCI_P_SACT);
		ccs = (FUNC0(ch->r_mem, AHCI_P_CMD) & AHCI_P_CMD_CCS_MASK)
		    >> AHCI_P_CMD_CCS_SHIFT;
		if ((sstatus & (1 << slot->slot)) != 0 || ccs == slot->slot ||
		    ch->fbs_enabled || ch->wrongccs)
			slot->state = AHCI_SLOT_EXECUTING;
		else if ((ch->rslots & (1 << ccs)) == 0) {
			ch->wrongccs = 1;
			slot->state = AHCI_SLOT_EXECUTING;
		}

		FUNC4(&slot->timeout,
	    	    SBT_1MS * slot->ccb->ccb_h.timeout / 2, 0,
		    (timeout_t*)ahci_timeout, slot, 0);
		return;
	}

	FUNC5(dev, "Timeout on slot %d port %d\n",
	    slot->slot, slot->ccb->ccb_h.target_id & 0x0f);
	FUNC5(dev, "is %08x cs %08x ss %08x rs %08x tfd %02x "
	    "serr %08x cmd %08x\n",
	    FUNC0(ch->r_mem, AHCI_P_IS), FUNC0(ch->r_mem, AHCI_P_CI),
	    FUNC0(ch->r_mem, AHCI_P_SACT), ch->rslots,
	    FUNC0(ch->r_mem, AHCI_P_TFD), FUNC0(ch->r_mem, AHCI_P_SERR),
	    FUNC0(ch->r_mem, AHCI_P_CMD));

	/* Handle frozen command. */
	if (ch->frozen) {
		union ccb *fccb = ch->frozen;
		ch->frozen = NULL;
		fccb->ccb_h.status = CAM_REQUEUE_REQ | CAM_RELEASE_SIMQ;
		if (!(fccb->ccb_h.status & CAM_DEV_QFRZN)) {
			FUNC6(fccb->ccb_h.path, 1);
			fccb->ccb_h.status |= CAM_DEV_QFRZN;
		}
		FUNC1(ch, fccb);
	}
	if (!ch->fbs_enabled && !ch->wrongccs) {
		/* Without FBS we know real timeout source. */
		ch->fatalerr = 1;
		/* Handle command with timeout. */
		FUNC2(&ch->slot[slot->slot], AHCI_ERR_TIMEOUT);
		/* Handle the rest of commands. */
		for (i = 0; i < ch->numslots; i++) {
			/* Do we have a running request on slot? */
			if (ch->slot[i].state < AHCI_SLOT_RUNNING)
				continue;
			FUNC2(&ch->slot[i], AHCI_ERR_INNOCENT);
		}
	} else {
		/* With FBS we wait for other commands timeout and pray. */
		if (ch->toslots == 0)
			FUNC7(ch->sim, 1);
		ch->toslots |= (1 << slot->slot);
		if ((ch->rslots & ~ch->toslots) == 0)
			FUNC3(ch);
		else
			FUNC5(dev, " ... waiting for slots %08x\n",
			    ch->rslots & ~ch->toslots);
	}
}