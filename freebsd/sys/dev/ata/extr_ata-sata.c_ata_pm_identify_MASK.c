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
typedef  int u_int32_t ;
struct TYPE_2__ {int (* softreset ) (int /*<<< orphan*/ ,int) ;scalar_t__ (* pm_read ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ;} ;
struct ata_channel {int devices; TYPE_1__ hw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATA_ATAPI_MASTER ; 
 int ATA_ATA_MASTER ; 
 int /*<<< orphan*/  ATA_PM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ bootverbose ; 
 struct ata_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

void
FUNC8(device_t dev)
{
    struct ata_channel *ch = FUNC2(dev);
    u_int32_t pm_chipid, pm_revision, pm_ports;
    int port;

    /* get PM vendor & product data */
    if (ch->hw.pm_read(dev, ATA_PM, 0, &pm_chipid)) {
	FUNC3(dev, "error getting PM vendor data\n");
	return;
    }

    /* get PM revision data */
    if (ch->hw.pm_read(dev, ATA_PM, 1, &pm_revision)) {
	FUNC3(dev, "error getting PM revision data\n");
	return;
    }

    /* get number of HW ports on the PM */
    if (ch->hw.pm_read(dev, ATA_PM, 2, &pm_ports)) {
	FUNC3(dev, "error getting PM port info\n");
	return;
    }
    pm_ports &= 0x0000000f;

    /* chip specific quirks */
    switch (pm_chipid) {
    case 0x37261095:
	/* This PM declares 6 ports, while only 5 of them are real.
	 * Port 5 is enclosure management bridge port, which has implementation
	 * problems, causing probe faults. Hide it for now. */
	FUNC3(dev, "SiI 3726 (rev=%x) Port Multiplier with %d (5) ports\n",
		      pm_revision, pm_ports);
	pm_ports = 5;
	break;

    case 0x47261095:
	/* This PM declares 7 ports, while only 5 of them are real.
	 * Port 5 is some fake "Config  Disk" with 640 sectors size,
	 * port 6 is enclosure management bridge port.
	 * Both fake ports has implementation problems, causing
	 * probe faults. Hide them for now. */
	FUNC3(dev, "SiI 4726 (rev=%x) Port Multiplier with %d (5) ports\n",
		      pm_revision, pm_ports);
	pm_ports = 5;
	break;

    default:
	FUNC3(dev, "Port Multiplier (id=%08x rev=%x) with %d ports\n",
		      pm_chipid, pm_revision, pm_ports);
    }

    /* reset all ports and register if anything connected */
    for (port=0; port < pm_ports; port++) {
	u_int32_t signature;

	if (!FUNC1(dev, port, 1))
	    continue;

	/*
	 * XXX: I have no idea how to properly wait for PMP port hardreset
	 * completion. Without this delay soft reset does not completes
	 * successfully.
	 */
	FUNC0(1000000);

	signature = ch->hw.softreset(dev, port);

	if (bootverbose)
	    FUNC3(dev, "p%d: SIGNATURE=%08x\n", port, signature);

	/* figure out whats there */
	switch (signature >> 16) {
	case 0x0000:
	    ch->devices |= (ATA_ATA_MASTER << port);
	    continue;
	case 0xeb14:
	    ch->devices |= (ATA_ATAPI_MASTER << port);
	    continue;
	}
    }
}