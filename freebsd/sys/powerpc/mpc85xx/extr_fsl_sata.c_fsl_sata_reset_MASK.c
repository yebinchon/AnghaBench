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
typedef  int uint32_t ;
struct fsl_sata_channel {scalar_t__ toslots; int devices; int /*<<< orphan*/  sim; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  dev; int /*<<< orphan*/  path; scalar_t__ fatalerr; scalar_t__ eslots; int /*<<< orphan*/  numhslots; union ccb** hold; TYPE_2__* slot; union ccb* frozen; } ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_BUS_RESET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int CAM_DEV_QFRZN ; 
 int CAM_RELEASE_SIMQ ; 
 int CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FSL_SATA_ERR_INNOCENT ; 
 int FSL_SATA_MAX_SLOTS ; 
 int /*<<< orphan*/  FSL_SATA_P_HCTRL ; 
 int FSL_SATA_P_HCTRL_CC ; 
 int FSL_SATA_P_HCTRL_DE ; 
 int FSL_SATA_P_HCTRL_FATAL ; 
 int FSL_SATA_P_HCTRL_PHYRDY ; 
 int FSL_SATA_P_HCTRL_SIG ; 
 int FSL_SATA_P_HCTRL_SNTFY ; 
 int /*<<< orphan*/  FSL_SATA_P_HSTS ; 
 scalar_t__ FSL_SATA_SLOT_RUNNING ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_sata_channel*,union ccb*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fsl_sata_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct fsl_sata_channel*) ; 
 scalar_t__ FUNC8 (struct fsl_sata_channel*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct fsl_sata_channel *ch)
{
	uint32_t ctrl;
	int i;

	FUNC11(ch->sim, 1);
	if (bootverbose)
		FUNC3(ch->dev, "FSL SATA reset...\n");

	/* Requeue freezed command. */
	if (ch->frozen) {
		union ccb *fccb = ch->frozen;
		ch->frozen = NULL;
		fccb->ccb_h.status = CAM_REQUEUE_REQ | CAM_RELEASE_SIMQ;
		if (!(fccb->ccb_h.status & CAM_DEV_QFRZN)) {
			FUNC10(fccb->ccb_h.path, 1);
			fccb->ccb_h.status |= CAM_DEV_QFRZN;
		}
		FUNC4(ch, fccb);
	}
	/* Kill the engine and requeue all running commands. */
	FUNC7(ch);
	FUNC2(1000);	/* sleep for 1ms */
	for (i = 0; i < FSL_SATA_MAX_SLOTS; i++) {
		/* Do we have a running request on slot? */
		if (ch->slot[i].state < FSL_SATA_SLOT_RUNNING)
			continue;
		/* XXX; Commands in loading state. */
		FUNC5(&ch->slot[i], FSL_SATA_ERR_INNOCENT);
	}
	for (i = 0; i < FSL_SATA_MAX_SLOTS; i++) {
		if (!ch->hold[i])
			continue;
		FUNC4(ch, ch->hold[i]);
		ch->hold[i] = NULL;
		ch->numhslots--;
	}
	if (ch->toslots != 0)
		FUNC12(ch->sim, TRUE);
	ch->eslots = 0;
	ch->toslots = 0;
	ch->fatalerr = 0;
	/* Tell the XPT about the event */
	FUNC9(AC_BUS_RESET, ch->path, NULL);
	/* Disable port interrupts */
	FUNC1(ch->r_mem, FSL_SATA_P_HCTRL,
	    FUNC0(ch->r_mem, FSL_SATA_P_HCTRL) & ~0x3f);
	/* Reset and reconnect PHY, */
	FUNC6(ch);
	if (FUNC8(ch, FSL_SATA_P_HSTS, 0x08, 0x08, 500)) {
		if (bootverbose)
			FUNC3(ch->dev,
			    "FSL SATA reset: device not found\n");
		ch->devices = 0;
		/* Enable wanted port interrupts */
		FUNC1(ch->r_mem, FSL_SATA_P_HCTRL,
		    FUNC0(ch->r_mem, FSL_SATA_P_HCTRL) | FSL_SATA_P_HCTRL_PHYRDY);
		FUNC12(ch->sim, TRUE);
		return;
	}
	if (bootverbose)
		FUNC3(ch->dev, "FSL SATA reset: device found\n");
	ch->devices = 1;
	/* Enable wanted port interrupts */
	ctrl = FUNC0(ch->r_mem, FSL_SATA_P_HCTRL) & ~0x3f;
	FUNC1(ch->r_mem, FSL_SATA_P_HCTRL,
	    ctrl | FSL_SATA_P_HCTRL_FATAL | FSL_SATA_P_HCTRL_PHYRDY |
	    FSL_SATA_P_HCTRL_SIG | FSL_SATA_P_HCTRL_SNTFY |
	    FSL_SATA_P_HCTRL_DE | FSL_SATA_P_HCTRL_CC);
	FUNC12(ch->sim, TRUE);
}