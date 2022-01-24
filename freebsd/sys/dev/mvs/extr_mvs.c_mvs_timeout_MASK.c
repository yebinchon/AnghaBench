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
struct mvs_slot {scalar_t__ state; int slot; int /*<<< orphan*/  dev; } ;
struct mvs_channel {int rslots; int toslots; int /*<<< orphan*/  sim; int /*<<< orphan*/  r_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_ALTSTAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_C ; 
 int /*<<< orphan*/  DMA_S ; 
 int /*<<< orphan*/  EDMA_IEC ; 
 int /*<<< orphan*/  EDMA_S ; 
 scalar_t__ MVS_SLOT_RUNNING ; 
 int /*<<< orphan*/  SATA_SE ; 
 int /*<<< orphan*/  SATA_SS ; 
 struct mvs_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct mvs_slot *slot)
{
	device_t dev = slot->dev;
	struct mvs_channel *ch = FUNC2(dev);

	/* Check for stale timeout. */
	if (slot->state < MVS_SLOT_RUNNING)
		return;
	FUNC3(dev, "Timeout on slot %d\n", slot->slot);
	FUNC3(dev, "iec %08x sstat %08x serr %08x edma_s %08x "
	    "dma_c %08x dma_s %08x rs %08x status %02x\n",
	    FUNC1(ch->r_mem, EDMA_IEC),
	    FUNC1(ch->r_mem, SATA_SS), FUNC1(ch->r_mem, SATA_SE),
	    FUNC1(ch->r_mem, EDMA_S), FUNC1(ch->r_mem, DMA_C),
	    FUNC1(ch->r_mem, DMA_S), ch->rslots,
	    FUNC0(ch->r_mem, ATA_ALTSTAT));
	/* Handle frozen command. */
	FUNC5(dev);
	/* We wait for other commands timeout and pray. */
	if (ch->toslots == 0)
		FUNC6(ch->sim, 1);
	ch->toslots |= (1 << slot->slot);
	if ((ch->rslots & ~ch->toslots) == 0)
		FUNC4(dev);
	else
		FUNC3(dev, " ... waiting for slots %08x\n",
		    ch->rslots & ~ch->toslots);
}