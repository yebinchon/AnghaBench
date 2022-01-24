#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mvs_controller {int quirks; } ;
struct mvs_channel {intptr_t unit; int quirks; int pm_level; int /*<<< orphan*/  mtx; void* r_mem; void* r_irq; int /*<<< orphan*/ * sim; int /*<<< orphan*/  pm_timer; int /*<<< orphan*/  path; int /*<<< orphan*/  ih; TYPE_1__* user; TYPE_1__* curr; int /*<<< orphan*/  reset_timer; int /*<<< orphan*/  dev; } ;
struct cam_devq {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int revision; int bytecount; int tags; int caps; scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_INTR_FLAGS ; 
 int ATA_IRQ_RID ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int CTS_SATA_CAPS_D_APST ; 
 int CTS_SATA_CAPS_D_PMREQ ; 
 int CTS_SATA_CAPS_H_AN ; 
 int CTS_SATA_CAPS_H_APST ; 
 int CTS_SATA_CAPS_H_PMREQ ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int MVS_MAX_SLOTS ; 
 int MVS_Q_GENI ; 
 int MVS_Q_GENIIE ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mvs_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct cam_devq* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct cam_devq*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mvs_ch_intr_locked ; 
 int /*<<< orphan*/  mvs_ch_pm ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mvsaction ; 
 int /*<<< orphan*/  mvspoll ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC27(device_t dev)
{
	struct mvs_controller *ctlr = FUNC13(FUNC12(dev));
	struct mvs_channel *ch = FUNC13(dev);
	struct cam_devq *devq;
	int rid, error, i, sata_rev = 0;

	ch->dev = dev;
	ch->unit = (intptr_t)FUNC10(dev);
	ch->quirks = ctlr->quirks;
	FUNC17(&ch->mtx, "MVS channel lock", NULL, MTX_DEF);
	ch->pm_level = 0;
	FUNC23(FUNC11(dev),
	    FUNC14(dev), "pm_level", &ch->pm_level);
	if (ch->pm_level > 3)
		FUNC3(&ch->pm_timer, &ch->mtx, 0);
	FUNC3(&ch->reset_timer, &ch->mtx, 0);
	FUNC23(FUNC11(dev),
	    FUNC14(dev), "sata_rev", &sata_rev);
	for (i = 0; i < 16; i++) {
		ch->user[i].revision = sata_rev;
		ch->user[i].mode = 0;
		ch->user[i].bytecount = (ch->quirks & MVS_Q_GENIIE) ? 8192 : 2048;
		ch->user[i].tags = MVS_MAX_SLOTS;
		ch->curr[i] = ch->user[i];
		if (ch->pm_level) {
			ch->user[i].caps = CTS_SATA_CAPS_H_PMREQ |
			    CTS_SATA_CAPS_H_APST |
			    CTS_SATA_CAPS_D_PMREQ | CTS_SATA_CAPS_D_APST;
		}
		ch->user[i].caps |= CTS_SATA_CAPS_H_AN;
	}
	rid = ch->unit;
	if (!(ch->r_mem = FUNC0(dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE)))
		return (ENXIO);
	FUNC21(dev);
	FUNC22(dev);
	FUNC20(dev);
	FUNC18(&ch->mtx);
	rid = ATA_IRQ_RID;
	if (!(ch->r_irq = FUNC0(dev, SYS_RES_IRQ,
	    &rid, RF_SHAREABLE | RF_ACTIVE))) {
		FUNC15(dev, "Unable to map interrupt\n");
		error = ENXIO;
		goto err0;
	}
	if ((FUNC2(dev, ch->r_irq, ATA_INTR_FLAGS, NULL,
	    mvs_ch_intr_locked, dev, &ch->ih))) {
		FUNC15(dev, "Unable to setup interrupt\n");
		error = ENXIO;
		goto err1;
	}
	/* Create the device queue for our SIM. */
	devq = FUNC8(MVS_MAX_SLOTS - 1);
	if (devq == NULL) {
		FUNC15(dev, "Unable to allocate simq\n");
		error = ENOMEM;
		goto err1;
	}
	/* Construct SIM entry */
	ch->sim = FUNC5(mvsaction, mvspoll, "mvsch", ch,
	    FUNC14(dev), &ch->mtx,
	    2, (ch->quirks & MVS_Q_GENI) ? 0 : MVS_MAX_SLOTS - 1,
	    devq);
	if (ch->sim == NULL) {
		FUNC9(devq);
		FUNC15(dev, "unable to allocate sim\n");
		error = ENOMEM;
		goto err1;
	}
	if (FUNC25(ch->sim, dev, 0) != CAM_SUCCESS) {
		FUNC15(dev, "unable to register xpt bus\n");
		error = ENXIO;
		goto err2;
	}
	if (FUNC26(&ch->path, /*periph*/NULL, FUNC7(ch->sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC15(dev, "unable to create path\n");
		error = ENXIO;
		goto err3;
	}
	if (ch->pm_level > 3) {
		FUNC4(&ch->pm_timer,
		    (ch->pm_level == 4) ? hz / 1000 : hz / 8,
		    mvs_ch_pm, dev);
	}
	FUNC19(&ch->mtx);
	return (0);

err3:
	FUNC24(FUNC7(ch->sim));
err2:
	FUNC6(ch->sim, /*free_devq*/TRUE);
err1:
	FUNC1(dev, SYS_RES_IRQ, ATA_IRQ_RID, ch->r_irq);
err0:
	FUNC1(dev, SYS_RES_MEMORY, ch->unit, ch->r_mem);
	FUNC19(&ch->mtx);
	FUNC16(&ch->mtx);
	return (error);
}