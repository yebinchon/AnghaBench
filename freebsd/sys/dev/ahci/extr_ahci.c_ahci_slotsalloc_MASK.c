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
struct TYPE_4__ {int /*<<< orphan*/  data_map; } ;
struct ahci_slot {int slot; TYPE_2__ dma; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * ccb; int /*<<< orphan*/  state; struct ahci_channel* ch; } ;
struct TYPE_3__ {int /*<<< orphan*/  data_tag; } ;
struct ahci_channel {int numslots; int /*<<< orphan*/  dev; TYPE_1__ dma; int /*<<< orphan*/  mtx; struct ahci_slot* slot; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_SLOT_EMPTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_slot*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ahci_channel* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	struct ahci_channel *ch = FUNC3(dev);
	int i;

	/* Alloc and setup command/dma slots */
	FUNC1(ch->slot, sizeof(ch->slot));
	for (i = 0; i < ch->numslots; i++) {
		struct ahci_slot *slot = &ch->slot[i];

		slot->ch = ch;
		slot->slot = i;
		slot->state = AHCI_SLOT_EMPTY;
		slot->ccb = NULL;
		FUNC2(&slot->timeout, &ch->mtx, 0);

		if (FUNC0(ch->dma.data_tag, 0, &slot->dma.data_map))
			FUNC4(ch->dev, "FAILURE - create data_map\n");
	}
}