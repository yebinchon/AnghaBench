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
struct resource {int dummy; } ;
struct ata_channel {int attached; int /*<<< orphan*/  flags; scalar_t__ unit; TYPE_1__* r_io; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int offset; struct resource* res; } ;

/* Variables and functions */
 int ATA_COMMAND ; 
 size_t ATA_CONTROL ; 
 int ATA_CTLADDR_RID ; 
 int /*<<< orphan*/  ATA_CTLIOSIZE ; 
 scalar_t__ ATA_CTLOFFSET ; 
 int ATA_DATA ; 
 size_t ATA_IDX_ADDR ; 
 int ATA_IOADDR_RID ; 
 int /*<<< orphan*/  ATA_IOSIZE ; 
 int /*<<< orphan*/  ATA_USE_16BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct resource*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
    struct ata_channel *ch = FUNC7(dev);
    struct resource *io = NULL, *ctlio = NULL;
    rman_res_t tmp;
    int i, rid;

    if (ch->attached)
	return (0);
    ch->attached = 1;

    /* allocate the io port range */
    rid = ATA_IOADDR_RID;
    if (!(io = FUNC3(dev, SYS_RES_IOPORT, &rid,
					   ATA_IOSIZE, RF_ACTIVE)))
	return ENXIO;

    /* set the altport range */
    if (FUNC4(dev, SYS_RES_IOPORT, ATA_CTLADDR_RID, &tmp, &tmp)) {
	FUNC6(dev, SYS_RES_IOPORT, ATA_CTLADDR_RID,
			 FUNC8(io) + ATA_CTLOFFSET, ATA_CTLIOSIZE);
    }

    /* allocate the altport range */
    rid = ATA_CTLADDR_RID; 
    if (!(ctlio = FUNC3(dev, SYS_RES_IOPORT, &rid,
					      ATA_CTLIOSIZE, RF_ACTIVE))) {
	FUNC5(dev, SYS_RES_IOPORT, ATA_IOADDR_RID, io);
	return ENXIO;
    }

    /* setup the resource vectors */
    for (i = ATA_DATA; i <= ATA_COMMAND; i++) {
	ch->r_io[i].res = io;
	ch->r_io[i].offset = i;
    }
    ch->r_io[ATA_CONTROL].res = ctlio;
    ch->r_io[ATA_CONTROL].offset = 0;
    ch->r_io[ATA_IDX_ADDR].res = io;
    FUNC1(dev);
 
    /* initialize softc for this channel */
    ch->unit = 0;
    ch->flags |= ATA_USE_16BIT;
    FUNC2(dev);
    return FUNC0(dev);
}