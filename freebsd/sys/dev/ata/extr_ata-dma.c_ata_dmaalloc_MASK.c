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
struct ata_dmaslot {int /*<<< orphan*/  data_map; int /*<<< orphan*/  data_tag; int /*<<< orphan*/  sg_bus; int /*<<< orphan*/  sg; int /*<<< orphan*/  sg_map; int /*<<< orphan*/  sg_tag; } ;
struct ata_dc_cb_args {int /*<<< orphan*/  maddr; scalar_t__ error; } ;
struct TYPE_2__ {int dma_slots; int /*<<< orphan*/  segsize; int /*<<< orphan*/  max_iosize; int /*<<< orphan*/  max_address; int /*<<< orphan*/  boundary; int /*<<< orphan*/  alignment; int /*<<< orphan*/  dmatag; struct ata_dmaslot* slot; } ;
struct ata_channel {int /*<<< orphan*/  dev; TYPE_1__ dma; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATA_DMA_ENTRIES ; 
 int ATA_DMA_SLOTS ; 
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_DMA_WAITOK ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  MAXTABSZ ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ata_dmasetupc_cb ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ata_dc_cb_args*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_dmaslot*,int) ; 
 struct ata_channel* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC8(device_t dev)
{
    struct ata_channel *ch = FUNC6(dev);
    struct ata_dc_cb_args dcba;
    int i;

    /* alloc and setup needed dma slots */
    FUNC5(ch->dma.slot, sizeof(struct ata_dmaslot) * ATA_DMA_SLOTS);
    for (i = 0; i < ch->dma.dma_slots; i++) {
	struct ata_dmaslot *slot = &ch->dma.slot[i];

	if (FUNC1(ch->dma.dmatag, PAGE_SIZE, PAGE_SIZE,
			       ch->dma.max_address, BUS_SPACE_MAXADDR,
			       NULL, NULL, PAGE_SIZE, 1, PAGE_SIZE,
			       0, NULL, NULL, &slot->sg_tag)) {
            FUNC7(ch->dev, "FAILURE - create sg_tag\n");
            goto error;
	}

	if (FUNC4(slot->sg_tag, (void **)&slot->sg, BUS_DMA_WAITOK,
			     &slot->sg_map)) {
	    FUNC7(ch->dev, "FAILURE - alloc sg_map\n");
	    goto error;
        }

	if (FUNC3(slot->sg_tag, slot->sg_map, slot->sg, MAXTABSZ,
			    ata_dmasetupc_cb, &dcba, 0) || dcba.error) {
	    FUNC7(ch->dev, "FAILURE - load sg\n");
	    goto error;
	}
	slot->sg_bus = dcba.maddr;

	if (FUNC1(ch->dma.dmatag,
			       ch->dma.alignment, ch->dma.boundary,
                               ch->dma.max_address, BUS_SPACE_MAXADDR,
                               NULL, NULL, ch->dma.max_iosize,
                               ATA_DMA_ENTRIES, ch->dma.segsize,
                               BUS_DMA_ALLOCNOW, NULL, NULL, &slot->data_tag)) {
	    FUNC7(ch->dev, "FAILURE - create data_tag\n");
	    goto error;
	}

	if (FUNC2(slot->data_tag, 0, &slot->data_map)) {
	    FUNC7(ch->dev, "FAILURE - create data_map\n");
	    goto error;
        }
    }

    return;

error:
    FUNC7(dev, "WARNING - DMA allocation failed, disabling DMA\n");
    FUNC0(dev);
}