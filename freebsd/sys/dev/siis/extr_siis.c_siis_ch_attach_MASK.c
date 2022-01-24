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
struct siis_controller {int /*<<< orphan*/  quirks; } ;
struct siis_channel {intptr_t unit; int pm_level; int /*<<< orphan*/  mtx; void* r_mem; void* r_irq; int /*<<< orphan*/ * sim; int /*<<< orphan*/  led; int /*<<< orphan*/  path; int /*<<< orphan*/  ih; TYPE_1__* user; TYPE_1__* curr; int /*<<< orphan*/  quirks; int /*<<< orphan*/  dev; } ;
struct cam_devq {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int revision; int bytecount; int /*<<< orphan*/  caps; int /*<<< orphan*/  tags; scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_INTR_FLAGS ; 
 int ATA_IRQ_RID ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  CTS_SATA_CAPS_H_AN ; 
 int /*<<< orphan*/  CTS_SATA_CAPS_H_PMREQ ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SIIS_MAX_SLOTS ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct siis_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct cam_devq* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_devq*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  siis_ch_intr_locked ; 
 int /*<<< orphan*/  siis_ch_led ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  siisaction ; 
 int /*<<< orphan*/  siispoll ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC27(device_t dev)
{
	struct siis_controller *ctlr = FUNC12(FUNC11(dev));
	struct siis_channel *ch = FUNC12(dev);
	struct cam_devq *devq;
	int rid, error, i, sata_rev = 0;

	ch->dev = dev;
	ch->unit = (intptr_t)FUNC8(dev);
	ch->quirks = ctlr->quirks;
	ch->pm_level = 0;
	FUNC20(FUNC9(dev),
	    FUNC13(dev), "pm_level", &ch->pm_level);
	FUNC20(FUNC9(dev),
	    FUNC13(dev), "sata_rev", &sata_rev);
	for (i = 0; i < 16; i++) {
		ch->user[i].revision = sata_rev;
		ch->user[i].mode = 0;
		ch->user[i].bytecount = 8192;
		ch->user[i].tags = SIIS_MAX_SLOTS;
		ch->curr[i] = ch->user[i];
		if (ch->pm_level)
			ch->user[i].caps = CTS_SATA_CAPS_H_PMREQ;
		ch->user[i].caps |= CTS_SATA_CAPS_H_AN;
	}
	FUNC17(&ch->mtx, "SIIS channel lock", NULL, MTX_DEF);
	rid = ch->unit;
	if (!(ch->r_mem = FUNC0(dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE)))
		return (ENXIO);
	FUNC22(dev);
	FUNC23(dev);
	FUNC21(dev);
	FUNC18(&ch->mtx);
	rid = ATA_IRQ_RID;
	if (!(ch->r_irq = FUNC0(dev, SYS_RES_IRQ,
	    &rid, RF_SHAREABLE | RF_ACTIVE))) {
		FUNC14(dev, "Unable to map interrupt\n");
		error = ENXIO;
		goto err0;
	}
	if ((FUNC2(dev, ch->r_irq, ATA_INTR_FLAGS, NULL,
	    siis_ch_intr_locked, dev, &ch->ih))) {
		FUNC14(dev, "Unable to setup interrupt\n");
		error = ENXIO;
		goto err1;
	}
	/* Create the device queue for our SIM. */
	devq = FUNC6(SIIS_MAX_SLOTS);
	if (devq == NULL) {
		FUNC14(dev, "Unable to allocate simq\n");
		error = ENOMEM;
		goto err1;
	}
	/* Construct SIM entry */
	ch->sim = FUNC3(siisaction, siispoll, "siisch", ch,
	    FUNC13(dev), &ch->mtx, 2, SIIS_MAX_SLOTS, devq);
	if (ch->sim == NULL) {
		FUNC7(devq);
		FUNC14(dev, "unable to allocate sim\n");
		error = ENOMEM;
		goto err1;
	}
	if (FUNC25(ch->sim, dev, 0) != CAM_SUCCESS) {
		FUNC14(dev, "unable to register xpt bus\n");
		error = ENXIO;
		goto err2;
	}
	if (FUNC26(&ch->path, /*periph*/NULL, FUNC5(ch->sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC14(dev, "unable to create path\n");
		error = ENXIO;
		goto err3;
	}
	FUNC19(&ch->mtx);
	ch->led = FUNC15(siis_ch_led, dev, FUNC10(dev));
	return (0);

err3:
	FUNC24(FUNC5(ch->sim));
err2:
	FUNC4(ch->sim, /*free_devq*/TRUE);
err1:
	FUNC1(dev, SYS_RES_IRQ, ATA_IRQ_RID, ch->r_irq);
err0:
	FUNC1(dev, SYS_RES_MEMORY, ch->unit, ch->r_mem);
	FUNC19(&ch->mtx);
	FUNC16(&ch->mtx);
	return (error);
}