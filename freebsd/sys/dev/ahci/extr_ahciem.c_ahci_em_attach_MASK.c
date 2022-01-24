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
struct cam_devq {int dummy; } ;
struct ahci_enclosure {int channels; int ichannels; int capsem; int /*<<< orphan*/  mtx; int /*<<< orphan*/ * r_memc; int /*<<< orphan*/ * r_memt; int /*<<< orphan*/ * r_memr; int /*<<< orphan*/ * sim; TYPE_1__* leds; int /*<<< orphan*/  path; int /*<<< orphan*/  quirks; void* dev; } ;
struct ahci_controller {int channels; int ichannels; int /*<<< orphan*/  quirks; } ;
typedef  void* device_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int num; void* led; void* dev; } ;

/* Variables and functions */
 int AHCI_EM_ALHD ; 
 int AHCI_EM_LED ; 
 int AHCI_EM_PM ; 
 int AHCI_EM_SAFTE ; 
 int AHCI_EM_SES2 ; 
 int AHCI_EM_SGPIO ; 
 int AHCI_EM_SMB ; 
 int AHCI_EM_XMT ; 
 int AHCI_NUM_LEDS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ATA_IRQ_RID ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  ahci_em_led ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  ahciemaction ; 
 int /*<<< orphan*/  ahciempoll ; 
 scalar_t__ bootverbose ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ahci_enclosure*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct cam_devq* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct cam_devq*) ; 
 char* FUNC9 (void*) ; 
 void* FUNC10 (void*) ; 
 void* FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*,char*,...) ; 
 void* FUNC14 (int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC23(device_t dev)
{
	device_t parent = FUNC10(dev);
	struct ahci_controller *ctlr = FUNC11(parent);
	struct ahci_enclosure *enc = FUNC11(dev);
	struct cam_devq *devq;
	int i, c, rid, error;
	char buf[32];

	enc->dev = dev;
	enc->quirks = ctlr->quirks;
	enc->channels = ctlr->channels;
	enc->ichannels = ctlr->ichannels;
	FUNC16(&enc->mtx, "AHCI enclosure lock", NULL, MTX_DEF);
	rid = 0;
	if (!(enc->r_memc = FUNC2(dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE))) {
		FUNC15(&enc->mtx);
		return (ENXIO);
	}
	enc->capsem = FUNC0(enc->r_memc, 0);
	rid = 1;
	if (!(enc->r_memt = FUNC2(dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE))) {
		error = ENXIO;
		goto err0;
	}
	if ((enc->capsem & (AHCI_EM_XMT | AHCI_EM_SMB)) == 0) {
		rid = 2;
		if (!(enc->r_memr = FUNC2(dev, SYS_RES_MEMORY,
		    &rid, RF_ACTIVE))) {
			error = ENXIO;
			goto err0;
		}
	} else
		enc->r_memr = NULL;
	FUNC17(&enc->mtx);
	if (FUNC1(dev) != 0) {
	    error = ENXIO;
	    goto err1;
	}
	rid = ATA_IRQ_RID;
	/* Create the device queue for our SIM. */
	devq = FUNC7(1);
	if (devq == NULL) {
		FUNC13(dev, "Unable to allocate SIM queue\n");
		error = ENOMEM;
		goto err1;
	}
	/* Construct SIM entry */
	enc->sim = FUNC4(ahciemaction, ahciempoll, "ahciem", enc,
	    FUNC12(dev), &enc->mtx,
	    1, 0, devq);
	if (enc->sim == NULL) {
		FUNC8(devq);
		FUNC13(dev, "Unable to allocate SIM\n");
		error = ENOMEM;
		goto err1;
	}
	if (FUNC21(enc->sim, dev, 0) != CAM_SUCCESS) {
		FUNC13(dev, "unable to register xpt bus\n");
		error = ENXIO;
		goto err2;
	}
	if (FUNC22(&enc->path, /*periph*/NULL, FUNC6(enc->sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC13(dev, "Unable to create path\n");
		error = ENXIO;
		goto err3;
	}
	FUNC18(&enc->mtx);
	if (bootverbose) {
		FUNC13(dev, "Caps:%s%s%s%s%s%s%s%s\n",
		    (enc->capsem & AHCI_EM_PM) ? " PM":"",
		    (enc->capsem & AHCI_EM_ALHD) ? " ALHD":"",
		    (enc->capsem & AHCI_EM_XMT) ? " XMT":"",
		    (enc->capsem & AHCI_EM_SMB) ? " SMB":"",
		    (enc->capsem & AHCI_EM_SGPIO) ? " SGPIO":"",
		    (enc->capsem & AHCI_EM_SES2) ? " SES-2":"",
		    (enc->capsem & AHCI_EM_SAFTE) ? " SAF-TE":"",
		    (enc->capsem & AHCI_EM_LED) ? " LED":"");
	}
	if ((enc->capsem & AHCI_EM_LED)) {
		for (c = 0; c < enc->channels; c++) {
			if ((enc->ichannels & (1 << c)) == 0)
				continue;
			for (i = 0; i < AHCI_NUM_LEDS; i++) {
				enc->leds[c * AHCI_NUM_LEDS + i].dev = dev;
				enc->leds[c * AHCI_NUM_LEDS + i].num =
				    c * AHCI_NUM_LEDS + i;
			}
			if ((enc->capsem & AHCI_EM_ALHD) == 0) {
				FUNC19(buf, sizeof(buf), "%s.%d.act",
				    FUNC9(parent), c);
				enc->leds[c * AHCI_NUM_LEDS + 0].led =
				    FUNC14(ahci_em_led,
				    &enc->leds[c * AHCI_NUM_LEDS + 0], buf);
			}
			FUNC19(buf, sizeof(buf), "%s.%d.locate",
			    FUNC9(parent), c);
			enc->leds[c * AHCI_NUM_LEDS + 1].led =
			    FUNC14(ahci_em_led,
			    &enc->leds[c * AHCI_NUM_LEDS + 1], buf);
			FUNC19(buf, sizeof(buf), "%s.%d.fault",
			    FUNC9(parent), c);
			enc->leds[c * AHCI_NUM_LEDS + 2].led =
			    FUNC14(ahci_em_led,
			    &enc->leds[c * AHCI_NUM_LEDS + 2], buf);
		}
	}
	return (0);

err3:
	FUNC20(FUNC6(enc->sim));
err2:
	FUNC5(enc->sim, /*free_devq*/TRUE);
err1:
	FUNC18(&enc->mtx);
	if (enc->r_memr)
		FUNC3(dev, SYS_RES_MEMORY, 2, enc->r_memr);
err0:
	if (enc->r_memt)
		FUNC3(dev, SYS_RES_MEMORY, 1, enc->r_memt);
	FUNC3(dev, SYS_RES_MEMORY, 0, enc->r_memc);
	FUNC15(&enc->mtx);
	return (error);
}