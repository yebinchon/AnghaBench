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
struct TYPE_4__ {int status; int /*<<< orphan*/  path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef  int uint32_t ;
struct siis_channel {int numrslots; scalar_t__ toslots; scalar_t__ pm_level; int devices; int /*<<< orphan*/  sim; int /*<<< orphan*/  path; int /*<<< orphan*/  r_mem; scalar_t__ pm_present; TYPE_2__* user; scalar_t__ fatalerr; scalar_t__ recovery; scalar_t__ eslots; int /*<<< orphan*/  numhslots; union ccb** hold; TYPE_3__* slot; union ccb* frozen; int /*<<< orphan*/  recoverycmd; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {int revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_BUS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ATA_SC_DET_IDLE ; 
 int ATA_SC_IPM_DIS_PARTIAL ; 
 int ATA_SC_IPM_DIS_SLUMBER ; 
 int ATA_SC_SPD_SPEED_GEN1 ; 
 int ATA_SC_SPD_SPEED_GEN2 ; 
 int ATA_SC_SPD_SPEED_GEN3 ; 
 int CAM_DEV_QFRZN ; 
 int CAM_RELEASE_SIMQ ; 
 int CAM_REQUEUE_REQ ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SIIS_ERR_INNOCENT ; 
 int SIIS_MAX_SLOTS ; 
 int /*<<< orphan*/  SIIS_P_CTLCLR ; 
 int /*<<< orphan*/  SIIS_P_CTLSET ; 
 int SIIS_P_CTL_32BIT ; 
 int SIIS_P_CTL_PME ; 
 int SIIS_P_CTL_PORT_RESET ; 
 int /*<<< orphan*/  SIIS_P_IECLR ; 
 int /*<<< orphan*/  SIIS_P_IESET ; 
 int /*<<< orphan*/  SIIS_P_IS ; 
 int SIIS_P_IX_ENABLED ; 
 int /*<<< orphan*/  SIIS_P_SCTL ; 
 scalar_t__ SIIS_SLOT_RUNNING ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bootverbose ; 
 struct siis_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct siis_channel*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (union ccb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(device_t dev)
{
	struct siis_channel *ch = FUNC2(dev);
	int i, retry = 0, sata_rev;
	uint32_t val;

	FUNC11(ch->sim, 1);
	if (bootverbose)
		FUNC3(dev, "SIIS reset...\n");
	if (!ch->recoverycmd && !ch->recovery)
		FUNC11(ch->sim, ch->numrslots);
	/* Requeue frozen command. */
	if (ch->frozen) {
		union ccb *fccb = ch->frozen;
		ch->frozen = NULL;
		fccb->ccb_h.status &= ~CAM_STATUS_MASK;
		fccb->ccb_h.status |= CAM_REQUEUE_REQ | CAM_RELEASE_SIMQ;
		if (!(fccb->ccb_h.status & CAM_DEV_QFRZN)) {
			FUNC10(fccb->ccb_h.path, 1);
			fccb->ccb_h.status |= CAM_DEV_QFRZN;
		}
		FUNC9(fccb);
	}
	/* Requeue all running commands. */
	for (i = 0; i < SIIS_MAX_SLOTS; i++) {
		/* Do we have a running request on slot? */
		if (ch->slot[i].state < SIIS_SLOT_RUNNING)
			continue;
		/* XXX; Commands in loading state. */
		FUNC5(&ch->slot[i], SIIS_ERR_INNOCENT);
	}
	/* Finish all held commands as-is. */
	for (i = 0; i < SIIS_MAX_SLOTS; i++) {
		if (!ch->hold[i])
			continue;
		FUNC9(ch->hold[i]);
		ch->hold[i] = NULL;
		ch->numhslots--;
	}
	if (ch->toslots != 0)
		FUNC12(ch->sim, TRUE);
	ch->eslots = 0;
	ch->recovery = 0;
	ch->toslots = 0;
	ch->fatalerr = 0;
	/* Disable port interrupts */
	FUNC0(ch->r_mem, SIIS_P_IECLR, 0x0000FFFF);
	/* Set speed limit. */
	sata_rev = ch->user[ch->pm_present ? 15 : 0].revision;
	if (sata_rev == 1)
		val = ATA_SC_SPD_SPEED_GEN1;
	else if (sata_rev == 2)
		val = ATA_SC_SPD_SPEED_GEN2;
	else if (sata_rev == 3)
		val = ATA_SC_SPD_SPEED_GEN3;
	else
		val = 0;
	FUNC0(ch->r_mem, SIIS_P_SCTL,
	    ATA_SC_DET_IDLE | val | ((ch->pm_level > 0) ? 0 :
	    (ATA_SC_IPM_DIS_PARTIAL | ATA_SC_IPM_DIS_SLUMBER)));
retry:
	FUNC4(dev);
	/* Reset and reconnect PHY, */
	if (!FUNC6(ch)) {
		ch->devices = 0;
		/* Enable port interrupts */
		FUNC0(ch->r_mem, SIIS_P_IESET, SIIS_P_IX_ENABLED);
		if (bootverbose)
			FUNC3(dev,
			    "SIIS reset done: phy reset found no device\n");
		/* Tell the XPT about the event */
		FUNC8(AC_BUS_RESET, ch->path, NULL);
		FUNC12(ch->sim, TRUE);
		return;
	}
	/* Wait for port ready status. */
	if (FUNC7(dev, 1000)) {
		FUNC3(dev, "port ready timeout\n");
		if (!retry) {
			FUNC3(dev, "trying full port reset ...\n");
			/* Get port to the reset state. */
			FUNC0(ch->r_mem, SIIS_P_CTLSET, SIIS_P_CTL_PORT_RESET);
			FUNC1(10000);
			/* Get port out of reset state. */
			FUNC0(ch->r_mem, SIIS_P_CTLCLR, SIIS_P_CTL_PORT_RESET);
			FUNC0(ch->r_mem, SIIS_P_CTLCLR, SIIS_P_CTL_32BIT);
			if (ch->pm_present)
				FUNC0(ch->r_mem, SIIS_P_CTLSET, SIIS_P_CTL_PME);
			else
				FUNC0(ch->r_mem, SIIS_P_CTLCLR, SIIS_P_CTL_PME);
			FUNC7(dev, 5000);
			retry = 1;
			goto retry;
		}
	}
	ch->devices = 1;
	/* Enable port interrupts */
	FUNC0(ch->r_mem, SIIS_P_IS, 0xFFFFFFFF);
	FUNC0(ch->r_mem, SIIS_P_IESET, SIIS_P_IX_ENABLED);
	if (bootverbose)
		FUNC3(dev, "SIIS reset done: devices=%08x\n", ch->devices);
	/* Tell the XPT about the event */
	FUNC8(AC_BUS_RESET, ch->path, NULL);
	FUNC12(ch->sim, TRUE);
}