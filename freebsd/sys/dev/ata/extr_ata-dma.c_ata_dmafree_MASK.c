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
struct ata_dmaslot {int /*<<< orphan*/ * data_tag; int /*<<< orphan*/ * sg_tag; int /*<<< orphan*/ * data_map; int /*<<< orphan*/ * sg; int /*<<< orphan*/  sg_map; scalar_t__ sg_bus; } ;
struct TYPE_2__ {struct ata_dmaslot* slot; } ;
struct ata_channel {TYPE_1__ dma; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATA_DMA_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
    struct ata_channel *ch = FUNC4(dev);
    int i;

    /* free all dma slots */
    for (i = 0; i < ATA_DMA_SLOTS; i++) {
	struct ata_dmaslot *slot = &ch->dma.slot[i];

	if (slot->sg_bus) {
            FUNC2(slot->sg_tag, slot->sg_map);
            slot->sg_bus = 0;
	}
	if (slot->sg) {
            FUNC3(slot->sg_tag, slot->sg, slot->sg_map);
            slot->sg = NULL;
	}
	if (slot->data_map) {
            FUNC1(slot->data_tag, slot->data_map);
            slot->data_map = NULL;
	}
	if (slot->sg_tag) {
            FUNC0(slot->sg_tag);
            slot->sg_tag = NULL;
	}
	if (slot->data_tag) {
            FUNC0(slot->data_tag);
            slot->data_tag = NULL;
	}
    }
}