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
struct fsl_sata_dc_cb_args {int /*<<< orphan*/  maddr; scalar_t__ error; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  data_tag; int /*<<< orphan*/  work_bus; int /*<<< orphan*/  work_map; int /*<<< orphan*/  work_tag; } ;
struct fsl_sata_channel {TYPE_1__ dma; int /*<<< orphan*/  mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  FSL_SATA_MAX_XFER ; 
 int /*<<< orphan*/  FSL_SATA_PRD_MAX ; 
 int FSL_SATA_SG_ENTRIES ; 
 int /*<<< orphan*/  FSL_SATA_WORK_SIZE ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fsl_sata_dc_cb_args*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * busdma_lock_mutex ; 
 struct fsl_sata_channel* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsl_sata_dmasetupc_cb ; 

__attribute__((used)) static void
FUNC8(device_t dev)
{
	struct fsl_sata_channel *ch = FUNC5(dev);
	struct fsl_sata_dc_cb_args dcba;

	/* Command area. */
	if (FUNC0(FUNC4(dev), 1024, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR,
	    NULL, NULL, FSL_SATA_WORK_SIZE, 1, FSL_SATA_WORK_SIZE,
	    0, NULL, NULL, &ch->dma.work_tag))
		goto error;
	if (FUNC2(ch->dma.work_tag, (void **)&ch->dma.work,
	    BUS_DMA_ZERO, &ch->dma.work_map))
		goto error;
	if (FUNC1(ch->dma.work_tag, ch->dma.work_map, ch->dma.work,
	    FSL_SATA_WORK_SIZE, fsl_sata_dmasetupc_cb, &dcba, 0) || dcba.error) {
		FUNC3(ch->dma.work_tag, ch->dma.work, ch->dma.work_map);
		goto error;
	}
	ch->dma.work_bus = dcba.maddr;
	/* Data area. */
	if (FUNC0(FUNC4(dev), 4, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR,
	    NULL, NULL, FSL_SATA_MAX_XFER,
	    FSL_SATA_SG_ENTRIES - 1, FSL_SATA_PRD_MAX,
	    0, busdma_lock_mutex, &ch->mtx, &ch->dma.data_tag)) {
		goto error;
	}
	if (bootverbose)
		FUNC6(dev, "work area: %p\n", ch->dma.work);
	return;

error:
	FUNC6(dev, "WARNING - DMA initialization failed\n");
	FUNC7(dev);
}