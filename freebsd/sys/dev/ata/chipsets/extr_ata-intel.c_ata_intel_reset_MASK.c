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
typedef  int uint16_t ;
typedef  int u_char ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pm_read; } ;
struct ata_channel {int flags; int devices; TYPE_2__ hw; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int cfg1; } ;

/* Variables and functions */
 int ATA_ATAPI_MASTER ; 
 int ATA_ATA_MASTER ; 
 int ATA_ATA_SLAVE ; 
 int FUNC0 (struct ata_channel*,int /*<<< orphan*/ ) ; 
 int* FUNC1 (struct ata_pci_controller*,struct ata_channel*) ; 
 int ATA_NO_SLAVE ; 
 int ATA_SATA ; 
 int /*<<< orphan*/  ATA_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int INTEL_6CH ; 
 int INTEL_6CH2 ; 
 void FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC11(device_t dev)
{
	device_t parent = FUNC6(dev);
	struct ata_pci_controller *ctlr = FUNC7(parent);
	struct ata_channel *ch = FUNC7(dev);
	int mask, pshift, timeout, devs;
	u_char *smap;
	uint16_t pcs;

	/* In combined mode, skip SATA stuff for PATA channel. */
	if ((ch->flags & ATA_SATA) == 0)
		return (FUNC3(dev));

	/* Do hard-reset on respective SATA ports. */
	smap = FUNC1(ctlr, ch);
	mask = 1 << smap[0];
	if ((ch->flags & ATA_NO_SLAVE) == 0)
		mask |= (1 << smap[1]);
	FUNC10(parent, 0x92,
	    FUNC9(parent, 0x92, 2) & ~mask, 2);
	FUNC2(100);
	FUNC10(parent, 0x92,
	    FUNC9(parent, 0x92, 2) | mask, 2);

	/* Wait up to 1 sec for "connect well". */
	if (ctlr->chip->cfg1 & (INTEL_6CH | INTEL_6CH2))
		pshift = 8;
	else
		pshift = 4;
	for (timeout = 0; timeout < 100 ; timeout++) {
		pcs = (FUNC9(parent, 0x92, 2) >> pshift) & mask;
		if ((pcs == mask) && (FUNC0(ch, ATA_STATUS) != 0xff))
			break;
		FUNC5(10000);
	}

	if (bootverbose)
		FUNC8(dev, "SATA reset: ports status=0x%02x\n", pcs);
	/* If any device found, do soft-reset. */
	if (ch->hw.pm_read != NULL) {
		devs = FUNC4(dev, 0, 2) ? ATA_ATA_MASTER : 0;
		if ((ch->flags & ATA_NO_SLAVE) == 0)
			devs |= FUNC4(dev, 1, 2) ?
			    ATA_ATA_SLAVE : 0;
	} else {
		devs = (pcs & (1 << smap[0])) ? ATA_ATA_MASTER : 0;
		if ((ch->flags & ATA_NO_SLAVE) == 0)
			devs |= (pcs & (1 << smap[1])) ?
			    ATA_ATA_SLAVE : 0;
	}
	if (devs) {
		FUNC3(dev);
		/* Reset may give fake slave when only ATAPI master present. */
		ch->devices &= (devs | (devs * ATA_ATAPI_MASTER));
	} else
		ch->devices = 0;
}