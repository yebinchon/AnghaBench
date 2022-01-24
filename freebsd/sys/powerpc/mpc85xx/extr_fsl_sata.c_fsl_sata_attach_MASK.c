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
struct mtx {int dummy; } ;
struct fsl_sata_channel {intptr_t unit; int pm_level; int /*<<< orphan*/  mtx; void* r_mem; void* r_irq; int /*<<< orphan*/ * sim; int /*<<< orphan*/  pm_timer; int /*<<< orphan*/  path; int /*<<< orphan*/  ih; TYPE_1__* user; TYPE_1__* curr; int /*<<< orphan*/  doneq; int /*<<< orphan*/  dev; } ;
struct cam_devq {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int revision; int bytecount; int caps; int /*<<< orphan*/  tags; scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_INTR_FLAGS ; 
 int ATA_IRQ_RID ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int CTS_SATA_CAPS_D_PMREQ ; 
 int CTS_SATA_CAPS_H_AN ; 
 int CTS_SATA_CAPS_H_PMREQ ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FSL_SATA_MAX_SLOTS ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bs_le_tag ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fsl_sata_channel*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct fsl_sata_channel*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct fsl_sata_channel*,int /*<<< orphan*/ ,struct mtx*,int,int /*<<< orphan*/ ,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct cam_devq* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cam_devq*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct fsl_sata_channel* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsl_sata_intr ; 
 int /*<<< orphan*/  fsl_sata_pm ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsl_sataaction ; 
 int /*<<< orphan*/  fsl_satapoll ; 
 int hz ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC24 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC28(device_t dev)
{
	struct fsl_sata_channel *ch = FUNC13(dev);
	struct cam_devq *devq;
	int rid, error, i, sata_rev = 0;

	ch->dev = dev;
	ch->unit = (intptr_t)FUNC11(dev);
	FUNC20(&ch->mtx, "FSL SATA channel lock", NULL, MTX_DEF);
	ch->pm_level = 0;
	FUNC23(FUNC12(dev),
	    FUNC14(dev), "pm_level", &ch->pm_level);
	FUNC0(&ch->doneq);
	if (ch->pm_level > 3)
		FUNC4(&ch->pm_timer, &ch->mtx, 0);
	FUNC23(FUNC12(dev),
	    FUNC14(dev), "sata_rev", &sata_rev);
	for (i = 0; i < 16; i++) {
		ch->user[i].revision = sata_rev;
		ch->user[i].mode = 0;
		ch->user[i].bytecount = 8192;
		ch->user[i].tags = FSL_SATA_MAX_SLOTS;
		ch->user[i].caps = 0;
		ch->curr[i] = ch->user[i];
		if (ch->pm_level) {
			ch->user[i].caps = CTS_SATA_CAPS_H_PMREQ |
			    CTS_SATA_CAPS_D_PMREQ;
		}
		ch->user[i].caps |= CTS_SATA_CAPS_H_AN;
	}
	rid = 0;
	if (!(ch->r_mem = FUNC1(dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE)))
		return (ENXIO);
	FUNC24(ch->r_mem, &bs_le_tag);
	FUNC16(dev);
	FUNC18(dev);
	FUNC17(dev);
	rid = ATA_IRQ_RID;
	if (!(ch->r_irq = FUNC1(dev, SYS_RES_IRQ,
	    &rid, RF_SHAREABLE | RF_ACTIVE))) {
		FUNC15(dev, "Unable to map interrupt\n");
		error = ENXIO;
		goto err0;
	}
	if ((FUNC3(dev, ch->r_irq, ATA_INTR_FLAGS, NULL,
	    fsl_sata_intr, ch, &ch->ih))) {
		FUNC15(dev, "Unable to setup interrupt\n");
		error = ENXIO;
		goto err1;
	}
	FUNC21(&ch->mtx);
	/* Create the device queue for our SIM. */
	devq = FUNC9(FSL_SATA_MAX_SLOTS);
	if (devq == NULL) {
		FUNC15(dev, "Unable to allocate simq\n");
		error = ENOMEM;
		goto err1;
	}
	/* Construct SIM entry */
	ch->sim = FUNC6(fsl_sataaction, fsl_satapoll, "fslsata", ch,
	    FUNC14(dev), (struct mtx *)&ch->mtx, 2, FSL_SATA_MAX_SLOTS,
	    devq);
	if (ch->sim == NULL) {
		FUNC10(devq);
		FUNC15(dev, "unable to allocate sim\n");
		error = ENOMEM;
		goto err1;
	}
	if (FUNC26(ch->sim, dev, 0) != CAM_SUCCESS) {
		FUNC15(dev, "unable to register xpt bus\n");
		error = ENXIO;
		goto err2;
	}
	if (FUNC27(&ch->path, /*periph*/NULL, FUNC8(ch->sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC15(dev, "unable to create path\n");
		error = ENXIO;
		goto err3;
	}
	if (ch->pm_level > 3) {
		FUNC5(&ch->pm_timer,
		    (ch->pm_level == 4) ? hz / 1000 : hz / 8,
		    fsl_sata_pm, ch);
	}
	FUNC22(&ch->mtx);
	return (0);

err3:
	FUNC25(FUNC8(ch->sim));
err2:
	FUNC7(ch->sim, /*free_devq*/TRUE);
err1:
	FUNC22(&ch->mtx);
	FUNC2(dev, SYS_RES_IRQ, ATA_IRQ_RID, ch->r_irq);
err0:
	FUNC2(dev, SYS_RES_MEMORY, ch->unit, ch->r_mem);
	FUNC19(&ch->mtx);
	return (error);
}