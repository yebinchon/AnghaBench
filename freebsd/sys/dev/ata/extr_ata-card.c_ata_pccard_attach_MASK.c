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
typedef  int uint16_t ;
struct resource {int dummy; } ;
struct ata_channel {int attached; int /*<<< orphan*/  flags; scalar_t__ unit; TYPE_1__* r_io; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int offset; struct resource* res; } ;

/* Variables and functions */
 int ATA_COMMAND ; 
 size_t ATA_CONTROL ; 
 int ATA_CTLADDR_RID ; 
 scalar_t__ ATA_CTLIOSIZE ; 
 int ATA_DATA ; 
 size_t ATA_IDX_ADDR ; 
 int ATA_IOADDR_RID ; 
 scalar_t__ ATA_IOSIZE ; 
 int ATA_MAX_RES ; 
 int /*<<< orphan*/  ATA_NO_SLAVE ; 
 int /*<<< orphan*/  ATA_USE_16BIT ; 
 int ENXIO ; 
 int PFD_I_D ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 struct ata_channel* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (struct resource*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
    struct ata_channel *ch = FUNC6(dev);
    struct resource *io, *ctlio;
    int i, rid, err;
    uint16_t funce;

    if (ch->attached)
	return (0);
    ch->attached = 1;

    /* allocate the io range to get start and length */
    rid = ATA_IOADDR_RID;
    if (!(io = FUNC4(dev, SYS_RES_IOPORT, &rid,
					   ATA_IOSIZE, RF_ACTIVE)))
	return (ENXIO);

    /* setup the resource vectors */
    for (i = ATA_DATA; i <= ATA_COMMAND; i++) {
	ch->r_io[i].res = io;
	ch->r_io[i].offset = i;
    }
    ch->r_io[ATA_IDX_ADDR].res = io;

    /*
     * if we got more than the default ATA_IOSIZE ports, this is a device
     * where ctlio is located at offset 14 into "normal" io space.
     */
    if (FUNC8(io) > ATA_IOSIZE) {
	ch->r_io[ATA_CONTROL].res = io;
	ch->r_io[ATA_CONTROL].offset = 14;
    }
    else {
	rid = ATA_CTLADDR_RID;
	if (!(ctlio = FUNC4(dev, SYS_RES_IOPORT, &rid,
						  ATA_CTLIOSIZE, RF_ACTIVE))) {
	    FUNC5(dev, SYS_RES_IOPORT, ATA_IOADDR_RID, io);
	    for (i = ATA_DATA; i < ATA_MAX_RES; i++)
		ch->r_io[i].res = NULL;
	    return (ENXIO);
	}
	ch->r_io[ATA_CONTROL].res = ctlio;
	ch->r_io[ATA_CONTROL].offset = 0;
    }
    FUNC1(dev);

    /* initialize softc for this channel */
    ch->unit = 0;
    ch->flags |= ATA_USE_16BIT;
    funce = 0;		/* Default to sane setting of FUNCE */
    FUNC7(dev, &funce); 
    if (!(funce & PFD_I_D))
        ch-> flags |= ATA_NO_SLAVE;
    FUNC2(dev);
    err = FUNC3(dev);
    if (err > 0)
	return (err);
    return (FUNC0(dev));
}