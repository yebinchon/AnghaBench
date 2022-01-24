#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int status; int /*<<< orphan*/  path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct ahci_controller {scalar_t__ ccc; } ;
struct ahci_channel {int resetting; int numslots; scalar_t__ toslots; int devices; scalar_t__ pm_level; int /*<<< orphan*/  sim; int /*<<< orphan*/  reset_timer; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  dev; int /*<<< orphan*/  path; scalar_t__ fatalerr; scalar_t__ wrongccs; scalar_t__ eslots; int /*<<< orphan*/  numhslots; union ccb** hold; TYPE_2__* slot; union ccb* frozen; } ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_BUS_RESET ; 
 int /*<<< orphan*/  AHCI_ERR_INNOCENT ; 
 int /*<<< orphan*/  AHCI_P_IE ; 
 int AHCI_P_IX_CPD ; 
 int AHCI_P_IX_DHR ; 
 int AHCI_P_IX_DP ; 
 int AHCI_P_IX_DS ; 
 int AHCI_P_IX_HBD ; 
 int AHCI_P_IX_HBF ; 
 int AHCI_P_IX_IF ; 
 int AHCI_P_IX_MP ; 
 int AHCI_P_IX_OF ; 
 int AHCI_P_IX_PC ; 
 int AHCI_P_IX_PRC ; 
 int AHCI_P_IX_PS ; 
 int AHCI_P_IX_SDB ; 
 int AHCI_P_IX_TFE ; 
 int AHCI_P_IX_UF ; 
 scalar_t__ AHCI_SLOT_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int CAM_DEV_QFRZN ; 
 int CAM_RELEASE_SIMQ ; 
 int CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_channel*,union ccb*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ahci_reset_to ; 
 int /*<<< orphan*/  FUNC4 (struct ahci_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahci_channel*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ahci_channel*) ; 
 scalar_t__ FUNC7 (struct ahci_channel*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct ahci_channel*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct ahci_controller* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ dumping ; 
 int hz ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(struct ahci_channel *ch)
{
	struct ahci_controller *ctlr = FUNC11(FUNC10(ch->dev));
	int i;

	FUNC15(ch->sim, 1);
	if (bootverbose)
		FUNC12(ch->dev, "AHCI reset...\n");
	/* Forget about previous reset. */
	if (ch->resetting) {
		ch->resetting = 0;
		FUNC9(&ch->reset_timer);
		FUNC16(ch->sim, TRUE);
	}
	/* Requeue freezed command. */
	if (ch->frozen) {
		union ccb *fccb = ch->frozen;
		ch->frozen = NULL;
		fccb->ccb_h.status = CAM_REQUEUE_REQ | CAM_RELEASE_SIMQ;
		if (!(fccb->ccb_h.status & CAM_DEV_QFRZN)) {
			FUNC14(fccb->ccb_h.path, 1);
			fccb->ccb_h.status |= CAM_DEV_QFRZN;
		}
		FUNC2(ch, fccb);
	}
	/* Kill the engine and requeue all running commands. */
	FUNC6(ch);
	for (i = 0; i < ch->numslots; i++) {
		/* Do we have a running request on slot? */
		if (ch->slot[i].state < AHCI_SLOT_RUNNING)
			continue;
		/* XXX; Commands in loading state. */
		FUNC3(&ch->slot[i], AHCI_ERR_INNOCENT);
	}
	for (i = 0; i < ch->numslots; i++) {
		if (!ch->hold[i])
			continue;
		FUNC2(ch, ch->hold[i]);
		ch->hold[i] = NULL;
		ch->numhslots--;
	}
	if (ch->toslots != 0)
		FUNC16(ch->sim, TRUE);
	ch->eslots = 0;
	ch->toslots = 0;
	ch->wrongccs = 0;
	ch->fatalerr = 0;
	/* Tell the XPT about the event */
	FUNC13(AC_BUS_RESET, ch->path, NULL);
	/* Disable port interrupts */
	FUNC0(ch->r_mem, AHCI_P_IE, 0);
	/* Reset and reconnect PHY, */
	if (!FUNC4(ch)) {
		if (bootverbose)
			FUNC12(ch->dev,
			    "AHCI reset: device not found\n");
		ch->devices = 0;
		/* Enable wanted port interrupts */
		FUNC0(ch->r_mem, AHCI_P_IE,
		    (((ch->pm_level != 0) ? AHCI_P_IX_CPD | AHCI_P_IX_MP : 0) |
		     AHCI_P_IX_PRC | AHCI_P_IX_PC));
		FUNC16(ch->sim, TRUE);
		return;
	}
	if (bootverbose)
		FUNC12(ch->dev, "AHCI reset: device found\n");
	/* Wait for clearing busy status. */
	if (FUNC7(ch, dumping ? 31000 : 0, 0)) {
		if (dumping)
			FUNC1(ch);
		else
			ch->resetting = 310;
	}
	ch->devices = 1;
	/* Enable wanted port interrupts */
	FUNC0(ch->r_mem, AHCI_P_IE,
	     (((ch->pm_level != 0) ? AHCI_P_IX_CPD | AHCI_P_IX_MP : 0) |
	      AHCI_P_IX_TFE | AHCI_P_IX_HBF |
	      AHCI_P_IX_HBD | AHCI_P_IX_IF | AHCI_P_IX_OF |
	      ((ch->pm_level == 0) ? AHCI_P_IX_PRC : 0) | AHCI_P_IX_PC |
	      AHCI_P_IX_DP | AHCI_P_IX_UF | (ctlr->ccc ? 0 : AHCI_P_IX_SDB) |
	      AHCI_P_IX_DS | AHCI_P_IX_PS | (ctlr->ccc ? 0 : AHCI_P_IX_DHR)));
	if (ch->resetting)
		FUNC8(&ch->reset_timer, hz / 10, ahci_reset_to, ch);
	else {
		FUNC5(ch, 1);
		FUNC16(ch->sim, TRUE);
	}
}