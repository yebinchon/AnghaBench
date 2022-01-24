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
struct ahci_dc_cb_args {int error; int /*<<< orphan*/  maddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  data_tag; int /*<<< orphan*/  rfis_bus; int /*<<< orphan*/  rfis_map; int /*<<< orphan*/  rfis; int /*<<< orphan*/  rfis_tag; int /*<<< orphan*/  work_bus; int /*<<< orphan*/  work_map; int /*<<< orphan*/  work; int /*<<< orphan*/  work_tag; } ;
struct ahci_channel {int chcaps; size_t numslots; TYPE_1__ dma; int /*<<< orphan*/  mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 size_t AHCI_PRD_MAX ; 
 int AHCI_P_CMD_FBSCP ; 
 size_t AHCI_SG_ENTRIES ; 
 size_t AHCI_WORK_SIZE ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ahci_dmasetupc_cb ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,struct ahci_dc_cb_args*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * busdma_lock_mutex ; 
 struct ahci_channel* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(device_t dev)
{
	struct ahci_channel *ch = FUNC6(dev);
	struct ahci_dc_cb_args dcba;
	size_t rfsize;
	int error;

	/* Command area. */
	error = FUNC1(FUNC5(dev), 1024, 0,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
	    NULL, NULL, AHCI_WORK_SIZE, 1, AHCI_WORK_SIZE,
	    0, NULL, NULL, &ch->dma.work_tag);
	if (error != 0)
		goto error;
	error = FUNC3(ch->dma.work_tag, (void **)&ch->dma.work,
	    BUS_DMA_ZERO, &ch->dma.work_map);
	if (error != 0)
		goto error;
	error = FUNC2(ch->dma.work_tag, ch->dma.work_map, ch->dma.work,
	    AHCI_WORK_SIZE, ahci_dmasetupc_cb, &dcba, BUS_DMA_NOWAIT);
	if (error != 0 || (error = dcba.error) != 0) {
		FUNC4(ch->dma.work_tag, ch->dma.work, ch->dma.work_map);
		goto error;
	}
	ch->dma.work_bus = dcba.maddr;
	/* FIS receive area. */
	if (ch->chcaps & AHCI_P_CMD_FBSCP)
	    rfsize = 4096;
	else
	    rfsize = 256;
	error = FUNC1(FUNC5(dev), rfsize, 0,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
	    NULL, NULL, rfsize, 1, rfsize,
	    0, NULL, NULL, &ch->dma.rfis_tag);
	if (error != 0)
		goto error;
	error = FUNC3(ch->dma.rfis_tag, (void **)&ch->dma.rfis, 0,
	    &ch->dma.rfis_map);
	if (error != 0)
		goto error;
	error = FUNC2(ch->dma.rfis_tag, ch->dma.rfis_map, ch->dma.rfis,
	    rfsize, ahci_dmasetupc_cb, &dcba, BUS_DMA_NOWAIT);
	if (error != 0 || (error = dcba.error) != 0) {
		FUNC4(ch->dma.rfis_tag, ch->dma.rfis, ch->dma.rfis_map);
		goto error;
	}
	ch->dma.rfis_bus = dcba.maddr;
	/* Data area. */
	error = FUNC1(FUNC5(dev), 2, 0,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
	    NULL, NULL,
	    AHCI_SG_ENTRIES * PAGE_SIZE * ch->numslots,
	    AHCI_SG_ENTRIES, AHCI_PRD_MAX,
	    0, busdma_lock_mutex, &ch->mtx, &ch->dma.data_tag);
	if (error != 0)
		goto error;
	return;

error:
	FUNC7(dev, "WARNING - DMA initialization failed, error %d\n",
	    error);
	FUNC0(dev);
}