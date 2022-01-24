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
struct mtx {int dummy; } ;
struct cam_devq {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* alloc ) (int /*<<< orphan*/ ) ;} ;
struct ata_channel {int flags; int pm_level; int /*<<< orphan*/  poll_callout; int /*<<< orphan*/  state_mtx; scalar_t__ r_irq; int /*<<< orphan*/ * sim; int /*<<< orphan*/  path; int /*<<< orphan*/  ih; TYPE_2__ dma; TYPE_1__* user; TYPE_1__* curr; int /*<<< orphan*/  conntask; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int revision; int mode; int bytecount; int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_IDLE ; 
 int /*<<< orphan*/  ATA_INTR_FLAGS ; 
 int ATA_IRQ_RID ; 
 int ATA_NO_48BIT_DMA ; 
 int ATA_PERIODIC_POLL ; 
 int ATA_SATA ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  CTS_ATA_CAPS_H_DMA48 ; 
 int /*<<< orphan*/  CTS_SATA_CAPS_D_PMREQ ; 
 int /*<<< orphan*/  CTS_SATA_CAPS_H_PMREQ ; 
 int EEXIST ; 
 int ENOMEM ; 
 int ENXIO ; 
 int MAXPHYS ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  ata_conn_event ; 
 int /*<<< orphan*/  ata_interrupt ; 
 int /*<<< orphan*/  ata_periodic_poll ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  ataaction ; 
 int /*<<< orphan*/  atapoll ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ata_channel*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ata_channel*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ata_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct cam_devq* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC28(device_t dev)
{
    struct ata_channel *ch = FUNC15(dev);
    int error, rid;
    struct cam_devq *devq;
    const char *res;
    char buf[64];
    int i, mode;

    /* check that we have a virgin channel to attach */
    if (ch->r_irq)
	return EEXIST;

    /* initialize the softc basics */
    ch->dev = dev;
    ch->state = ATA_IDLE;
    FUNC5(&ch->state_mtx, sizeof(struct mtx));
    FUNC18(&ch->state_mtx, "ATA state lock", NULL, MTX_DEF);
    FUNC0(&ch->conntask, 0, ata_conn_event, dev);
	for (i = 0; i < 16; i++) {
		ch->user[i].revision = 0;
		FUNC23(buf, sizeof(buf), "dev%d.sata_rev", i);
		if (FUNC21(FUNC14(dev),
		    FUNC16(dev), buf, &mode) != 0 &&
		    FUNC21(FUNC14(dev),
		    FUNC16(dev), "sata_rev", &mode) != 0)
			mode = -1;
		if (mode >= 0)
			ch->user[i].revision = mode;
		ch->user[i].mode = 0;
		FUNC23(buf, sizeof(buf), "dev%d.mode", i);
		if (FUNC22(FUNC14(dev),
		    FUNC16(dev), buf, &res) == 0)
			mode = FUNC1(res);
		else if (FUNC22(FUNC14(dev),
		    FUNC16(dev), "mode", &res) == 0)
			mode = FUNC1(res);
		else
			mode = -1;
		if (mode >= 0)
			ch->user[i].mode = mode;
		if (ch->flags & ATA_SATA)
			ch->user[i].bytecount = 8192;
		else
			ch->user[i].bytecount = MAXPHYS;
		ch->user[i].caps = 0;
		ch->curr[i] = ch->user[i];
		if (ch->flags & ATA_SATA) {
			if (ch->pm_level > 0)
				ch->user[i].caps |= CTS_SATA_CAPS_H_PMREQ;
			if (ch->pm_level > 1)
				ch->user[i].caps |= CTS_SATA_CAPS_D_PMREQ;
		} else {
			if (!(ch->flags & ATA_NO_48BIT_DMA))
				ch->user[i].caps |= CTS_ATA_CAPS_H_DMA48;
		}
	}
	FUNC7(&ch->poll_callout, 1);

    /* allocate DMA resources if DMA HW present*/
    if (ch->dma.alloc)
	ch->dma.alloc(dev);

    /* setup interrupt delivery */
    rid = ATA_IRQ_RID;
    ch->r_irq = FUNC2(dev, SYS_RES_IRQ, &rid,
				       RF_SHAREABLE | RF_ACTIVE);
    if (!ch->r_irq) {
	FUNC17(dev, "unable to allocate interrupt\n");
	return ENXIO;
    }
    if ((error = FUNC4(dev, ch->r_irq, ATA_INTR_FLAGS, NULL,
				ata_interrupt, ch, &ch->ih))) {
	FUNC3(dev, SYS_RES_IRQ, rid, ch->r_irq);
	FUNC17(dev, "unable to setup interrupt\n");
	return error;
    }

	if (ch->flags & ATA_PERIODIC_POLL)
		FUNC8(&ch->poll_callout, hz, ata_periodic_poll, ch);
	FUNC19(&ch->state_mtx);
	/* Create the device queue for our SIM. */
	devq = FUNC12(1);
	if (devq == NULL) {
		FUNC17(dev, "Unable to allocate simq\n");
		error = ENOMEM;
		goto err1;
	}
	/* Construct SIM entry */
	ch->sim = FUNC9(ataaction, atapoll, "ata", ch,
	    FUNC16(dev), &ch->state_mtx, 1, 0, devq);
	if (ch->sim == NULL) {
		FUNC17(dev, "unable to allocate sim\n");
		FUNC13(devq);
		error = ENOMEM;
		goto err1;
	}
	if (FUNC26(ch->sim, dev, 0) != CAM_SUCCESS) {
		FUNC17(dev, "unable to register xpt bus\n");
		error = ENXIO;
		goto err2;
	}
	if (FUNC27(&ch->path, /*periph*/NULL, FUNC11(ch->sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC17(dev, "unable to create path\n");
		error = ENXIO;
		goto err3;
	}
	FUNC20(&ch->state_mtx);
	return (0);

err3:
	FUNC25(FUNC11(ch->sim));
err2:
	FUNC10(ch->sim, /*free_devq*/TRUE);
	ch->sim = NULL;
err1:
	FUNC3(dev, SYS_RES_IRQ, rid, ch->r_irq);
	FUNC20(&ch->state_mtx);
	if (ch->flags & ATA_PERIODIC_POLL)
		FUNC6(&ch->poll_callout);
	return (error);
}