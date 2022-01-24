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
struct ata_dc_cb_args {int /*<<< orphan*/  maddr; scalar_t__ error; } ;
struct TYPE_2__ {int alignment; int boundary; int segsize; scalar_t__ max_iosize; scalar_t__ max_address; int dma_slots; int /*<<< orphan*/  work_bus; int /*<<< orphan*/  work_map; int /*<<< orphan*/  work; int /*<<< orphan*/  work_tag; int /*<<< orphan*/  dmatag; int /*<<< orphan*/ * unload; int /*<<< orphan*/ * load; int /*<<< orphan*/ * setprd; int /*<<< orphan*/ * free; int /*<<< orphan*/ * alloc; } ;
struct ata_channel {TYPE_1__ dma; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATA_DMA_ENTRIES ; 
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  MAXPHYS ; 
 scalar_t__ MAXWSPCSZ ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/ * ata_dmaalloc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ata_dmafree ; 
 int /*<<< orphan*/ * ata_dmaload ; 
 int /*<<< orphan*/ * ata_dmasetprd ; 
 int /*<<< orphan*/  ata_dmasetupc_cb ; 
 int /*<<< orphan*/ * ata_dmaunload ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct ata_dc_cb_args*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

void 
FUNC9(device_t dev)
{
    struct ata_channel *ch = FUNC7(dev);
    struct ata_dc_cb_args dcba;

    if (ch->dma.alloc == NULL)
	ch->dma.alloc = ata_dmaalloc;
    if (ch->dma.free == NULL)
	ch->dma.free = ata_dmafree;
    if (ch->dma.setprd == NULL)
	ch->dma.setprd = ata_dmasetprd;
    if (ch->dma.load == NULL)
	ch->dma.load = ata_dmaload;
    if (ch->dma.unload == NULL)
	ch->dma.unload = ata_dmaunload;
    if (ch->dma.alignment == 0)
	ch->dma.alignment = 2;
    if (ch->dma.boundary == 0)
	ch->dma.boundary = 65536;
    if (ch->dma.segsize == 0)
	ch->dma.segsize = 65536;
    if (ch->dma.max_iosize == 0)
	ch->dma.max_iosize = FUNC0((ATA_DMA_ENTRIES - 1) * PAGE_SIZE, MAXPHYS);
    if (ch->dma.max_address == 0)
	ch->dma.max_address = BUS_SPACE_MAXADDR_32BIT;
    if (ch->dma.dma_slots == 0)
	ch->dma.dma_slots = 1;

    if (FUNC2(FUNC6(dev), ch->dma.alignment, 0,
			   ch->dma.max_address, BUS_SPACE_MAXADDR,
			   NULL, NULL, ch->dma.max_iosize,
			   ATA_DMA_ENTRIES, ch->dma.segsize,
			   0, NULL, NULL, &ch->dma.dmatag))
	goto error;

    if (FUNC2(ch->dma.dmatag, PAGE_SIZE, 64 * 1024,
			   ch->dma.max_address, BUS_SPACE_MAXADDR,
			   NULL, NULL, MAXWSPCSZ, 1, MAXWSPCSZ,
			   0, NULL, NULL, &ch->dma.work_tag))
	goto error;

    if (FUNC4(ch->dma.work_tag, (void **)&ch->dma.work,
			 BUS_DMA_WAITOK | BUS_DMA_COHERENT,
			 &ch->dma.work_map))
	goto error;

    if (FUNC3(ch->dma.work_tag, ch->dma.work_map, ch->dma.work,
			MAXWSPCSZ, ata_dmasetupc_cb, &dcba, 0) ||
			dcba.error) {
	FUNC5(ch->dma.work_tag, ch->dma.work, ch->dma.work_map);
	goto error;
    }
    ch->dma.work_bus = dcba.maddr;
    return;

error:
    FUNC8(dev, "WARNING - DMA initialization failed, disabling DMA\n");
    FUNC1(dev);
}