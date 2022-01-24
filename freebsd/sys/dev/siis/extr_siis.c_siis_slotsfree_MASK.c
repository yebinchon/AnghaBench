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
struct TYPE_4__ {int /*<<< orphan*/ * data_map; } ;
struct siis_slot {TYPE_2__ dma; int /*<<< orphan*/  timeout; } ;
struct TYPE_3__ {int /*<<< orphan*/  data_tag; } ;
struct siis_channel {TYPE_1__ dma; struct siis_slot* slot; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int SIIS_MAX_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct siis_channel* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev)
{
	struct siis_channel *ch = FUNC2(dev);
	int i;

	/* Free all dma slots */
	for (i = 0; i < SIIS_MAX_SLOTS; i++) {
		struct siis_slot *slot = &ch->slot[i];

		FUNC1(&slot->timeout);
		if (slot->dma.data_map) {
			FUNC0(ch->dma.data_tag, slot->dma.data_map);
			slot->dma.data_map = NULL;
		}
	}
}