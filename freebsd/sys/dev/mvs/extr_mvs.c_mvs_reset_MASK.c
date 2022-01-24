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
struct mvs_channel {int resetting; scalar_t__ toslots; int devices; int /*<<< orphan*/  sim; int /*<<< orphan*/  reset_timer; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  path; scalar_t__ fake_busy; scalar_t__ fatalerr; scalar_t__ eslots; int /*<<< orphan*/  numhslots; int /*<<< orphan*/ ** hold; TYPE_1__* slot; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_BUS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ATA_S_BUSY ; 
 int ATA_S_DRQ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DMA_C ; 
 int /*<<< orphan*/  EDMA_CMD ; 
 int EDMA_CMD_EATARST ; 
 int /*<<< orphan*/  EDMA_IEC ; 
 int /*<<< orphan*/  EDMA_IEM ; 
 int EDMA_IE_TRANSIENT ; 
 int /*<<< orphan*/  MVS_EDMA_OFF ; 
 int /*<<< orphan*/  MVS_ERR_INNOCENT ; 
 int MVS_MAX_SLOTS ; 
 scalar_t__ MVS_SLOT_RUNNING ; 
 int /*<<< orphan*/  SATA_SE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mvs_channel* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ dumping ; 
 int hz ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mvs_reset_to ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(device_t dev)
{
	struct mvs_channel *ch = FUNC4(dev);
	int i;

	FUNC14(ch->sim, 1);
	if (bootverbose)
		FUNC5(dev, "MVS reset...\n");
	/* Forget about previous reset. */
	if (ch->resetting) {
		ch->resetting = 0;
		FUNC3(&ch->reset_timer);
		FUNC15(ch->sim, TRUE);
	}
	/* Requeue freezed command. */
	FUNC8(dev);
	/* Kill the engine and requeue all running commands. */
	FUNC10(dev, MVS_EDMA_OFF);
	FUNC0(ch->r_mem, DMA_C, 0);
	for (i = 0; i < MVS_MAX_SLOTS; i++) {
		/* Do we have a running request on slot? */
		if (ch->slot[i].state < MVS_SLOT_RUNNING)
			continue;
		/* XXX; Commands in loading state. */
		FUNC6(&ch->slot[i], MVS_ERR_INNOCENT);
	}
	for (i = 0; i < MVS_MAX_SLOTS; i++) {
		if (!ch->hold[i])
			continue;
		FUNC13(ch->hold[i]);
		ch->hold[i] = NULL;
		ch->numhslots--;
	}
	if (ch->toslots != 0)
		FUNC15(ch->sim, TRUE);
	ch->eslots = 0;
	ch->toslots = 0;
	ch->fatalerr = 0;
	ch->fake_busy = 0;
	/* Tell the XPT about the event */
	FUNC12(AC_BUS_RESET, ch->path, NULL);
	FUNC0(ch->r_mem, EDMA_IEM, 0);
	FUNC0(ch->r_mem, EDMA_CMD, EDMA_CMD_EATARST);
	FUNC1(25);
	FUNC0(ch->r_mem, EDMA_CMD, 0);
	FUNC7(dev);
	/* Reset and reconnect PHY, */
	if (!FUNC9(dev)) {
		if (bootverbose)
			FUNC5(dev, "MVS reset: device not found\n");
		ch->devices = 0;
		FUNC0(ch->r_mem, SATA_SE, 0xffffffff);
		FUNC0(ch->r_mem, EDMA_IEC, 0);
		FUNC0(ch->r_mem, EDMA_IEM, ~EDMA_IE_TRANSIENT);
		FUNC15(ch->sim, TRUE);
		return;
	}
	if (bootverbose)
		FUNC5(dev, "MVS reset: device found\n");
	/* Wait for clearing busy status. */
	if ((i = FUNC11(dev, 0, ATA_S_BUSY | ATA_S_DRQ,
	    dumping ? 31000 : 0)) < 0) {
		if (dumping) {
			FUNC5(dev,
			    "MVS reset: device not ready after 31000ms\n");
		} else
			ch->resetting = 310;
	} else if (bootverbose)
		FUNC5(dev, "MVS reset: device ready after %dms\n", i);
	ch->devices = 1;
	FUNC0(ch->r_mem, SATA_SE, 0xffffffff);
	FUNC0(ch->r_mem, EDMA_IEC, 0);
	FUNC0(ch->r_mem, EDMA_IEM, ~EDMA_IE_TRANSIENT);
	if (ch->resetting)
		FUNC2(&ch->reset_timer, hz / 10, mvs_reset_to, dev);
	else
		FUNC15(ch->sim, TRUE);
}