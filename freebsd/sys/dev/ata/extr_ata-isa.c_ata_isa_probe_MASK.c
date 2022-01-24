#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATA_CTLADDR_RID ; 
 int /*<<< orphan*/  ATA_CTLIOSIZE ; 
 scalar_t__ ATA_CTLOFFSET ; 
 int ATA_IOADDR_RID ; 
 int /*<<< orphan*/  ATA_IOSIZE ; 
 scalar_t__ ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  ata_ids ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (struct resource*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
    struct resource *io = NULL, *ctlio = NULL;
    rman_res_t tmp;
    int rid;

    /* check isapnp ids */
    if (FUNC0(FUNC6(dev), dev, ata_ids) == ENXIO)
	return ENXIO;

    /* allocate the io port range */
    rid = ATA_IOADDR_RID;
    if (!(io = FUNC2(dev, SYS_RES_IOPORT, &rid,
					   ATA_IOSIZE, RF_ACTIVE)))
	return ENXIO;

    /* set the altport range */
    if (FUNC3(dev, SYS_RES_IOPORT, ATA_CTLADDR_RID, &tmp, &tmp)) {
	FUNC5(dev, SYS_RES_IOPORT, ATA_CTLADDR_RID,
			 FUNC8(io) + ATA_CTLOFFSET, ATA_CTLIOSIZE);
    }

    /* allocate the altport range */
    rid = ATA_CTLADDR_RID; 
    if (!(ctlio = FUNC2(dev, SYS_RES_IOPORT, &rid,
					      ATA_CTLIOSIZE, RF_ACTIVE))) {
	FUNC4(dev, SYS_RES_IOPORT, ATA_IOADDR_RID, io);
	return ENXIO;
    }

    /* Release resources to reallocate on attach. */
    FUNC4(dev, SYS_RES_IOPORT, ATA_CTLADDR_RID, ctlio);
    FUNC4(dev, SYS_RES_IOPORT, ATA_IOADDR_RID, io);

    FUNC7(dev, "ATA channel");
    return (FUNC1(dev));
}