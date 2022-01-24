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
typedef  int u_int32_t ;
struct ata_promise_sx4 {int /*<<< orphan*/  mtx; int /*<<< orphan*/  busy; } ;
struct ata_pci_controller {int /*<<< orphan*/  r_res2; TYPE_1__* chip; struct ata_promise_sx4* chipset_data; } ;
struct TYPE_4__ {int (* softreset ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct ata_channel {int unit; int devices; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int cfg2; } ;

/* Variables and functions */
 int ATA_ATAPI_MASTER ; 
 void* ATA_ATA_MASTER ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ATA_PM ; 
 int ATA_PORTMULTIPLIER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  PR_CMBO 133 
#define  PR_CMBO2 132 
#define  PR_PATA 131 
#define  PR_SATA 130 
#define  PR_SATA2 129 
#define  PR_SX4X 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int bootverbose ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC8(FUNC7(dev));
    struct ata_channel *ch = FUNC8(dev);
    struct ata_promise_sx4 *hpktp;

    switch (ctlr->chip->cfg2) {
    case PR_SX4X:

	/* softreset channel ATA module */
	hpktp = ctlr->chipset_data;
	FUNC1(ctlr->r_res2, 0xc0260 + (ch->unit << 7), ch->unit + 1);
	FUNC6(1000);
	FUNC1(ctlr->r_res2, 0xc0260 + (ch->unit << 7),
		 (FUNC0(ctlr->r_res2, 0xc0260 + (ch->unit << 7)) &
		  ~0x00003f9f) | (ch->unit + 1));

	/* softreset HOST module */ /* XXX SOS what about other outstandings */
	FUNC10(&hpktp->mtx);
	FUNC1(ctlr->r_res2, 0xc012c,
		 (FUNC0(ctlr->r_res2, 0xc012c) & ~0x00000f9f) | (1 << 11));
	FUNC2(10);
	FUNC1(ctlr->r_res2, 0xc012c,
		 (FUNC0(ctlr->r_res2, 0xc012c) & ~0x00000f9f));
	hpktp->busy = 0;
	FUNC11(&hpktp->mtx);
	FUNC3(dev);
	break;

    case PR_PATA:
    case PR_CMBO:
    case PR_SATA:
	if ((ctlr->chip->cfg2 == PR_SATA) ||
	    ((ctlr->chip->cfg2 == PR_CMBO) && (ch->unit < 2))) {

	    /* mask plug/unplug intr */
	    FUNC1(ctlr->r_res2, 0x06c, (0x00110000 << ch->unit));
	}

	/* softreset channels ATA module */
	FUNC1(ctlr->r_res2, 0x0260 + (ch->unit << 7), (1 << 11));
	FUNC6(10000);
	FUNC1(ctlr->r_res2, 0x0260 + (ch->unit << 7),
		 (FUNC0(ctlr->r_res2, 0x0260 + (ch->unit << 7)) &
		  ~0x00003f9f) | (ch->unit + 1));

	if ((ctlr->chip->cfg2 == PR_SATA) ||
	    ((ctlr->chip->cfg2 == PR_CMBO) && (ch->unit < 2))) {

	    if (FUNC5(dev, -1, 1))
		FUNC3(dev);
	    else
		ch->devices = 0;

	    /* reset and enable plug/unplug intr */
	    FUNC1(ctlr->r_res2, 0x06c, (0x00000011 << ch->unit));
	}
	else
	    FUNC3(dev);
	break;

    case PR_CMBO2:
    case PR_SATA2:
	if ((ctlr->chip->cfg2 == PR_SATA2) ||
	    ((ctlr->chip->cfg2 == PR_CMBO2) && (ch->unit < 2))) {
	    /* set portmultiplier port */
	    //ATA_OUTL(ctlr->r_res2, 0x4e8 + (ch->unit << 8), 0x0f);

	    /* mask plug/unplug intr */
	    FUNC1(ctlr->r_res2, 0x060, (0x00110000 << ch->unit));
	}

	/* softreset channels ATA module */
	FUNC1(ctlr->r_res2, 0x0260 + (ch->unit << 7), (1 << 11));
	FUNC6(10000);
	FUNC1(ctlr->r_res2, 0x0260 + (ch->unit << 7),
		 (FUNC0(ctlr->r_res2, 0x0260 + (ch->unit << 7)) &
		  ~0x00003f9f) | (ch->unit + 1));

	if ((ctlr->chip->cfg2 == PR_SATA2) ||
	    ((ctlr->chip->cfg2 == PR_CMBO2) && (ch->unit < 2))) {

	    /* set PHY mode to "improved" */
	    FUNC1(ctlr->r_res2, 0x414 + (ch->unit << 8),
		     (FUNC0(ctlr->r_res2, 0x414 + (ch->unit << 8)) &
		     ~0x00000003) | 0x00000001);

	    if (FUNC5(dev, -1, 1)) {
		u_int32_t signature = ch->hw.softreset(dev, ATA_PM);

		if (1 | bootverbose)
        	    FUNC9(dev, "SIGNATURE: %08x\n", signature);

		switch (signature >> 16) {
		case 0x0000:
		    ch->devices = ATA_ATA_MASTER;
		    break;
		case 0x9669:
		    ch->devices = ATA_PORTMULTIPLIER;
		    FUNC4(dev);
		    break;
		case 0xeb14:
		    ch->devices = ATA_ATAPI_MASTER;
		    break;
		default: /* SOS XXX */
		    if (bootverbose)
			FUNC9(dev,
				      "No signature, assuming disk device\n");
		    ch->devices = ATA_ATA_MASTER;
		}
		if (bootverbose)
		    FUNC9(dev, "promise_mio_reset devices=%08x\n",
		    		  ch->devices);

	    } else
		ch->devices = 0;

	    /* reset and enable plug/unplug intr */
	    FUNC1(ctlr->r_res2, 0x060, (0x00000011 << ch->unit));

	    ///* set portmultiplier port */
	    FUNC1(ctlr->r_res2, 0x4e8 + (ch->unit << 8), 0x00);
	}
	else
	    FUNC3(dev);
	break;

    }
}