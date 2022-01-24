#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {char* rm_descr; int /*<<< orphan*/  rm_type; int /*<<< orphan*/  rm_end; int /*<<< orphan*/  rm_start; } ;
struct siis_controller {int channels; TYPE_2__ sc_iomem; void* r_gmem; void* r_grid; void* r_mem; void* r_rid; int /*<<< orphan*/  gctl; int /*<<< orphan*/  quirks; int /*<<< orphan*/ * dev; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_5__ {scalar_t__ id; int ports; int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RMAN_ARRAY ; 
 int /*<<< orphan*/  SIIS_GCTL ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 struct siis_controller* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int FUNC14 (TYPE_2__*) ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* siis_ids ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct siis_controller *ctlr = FUNC6(dev);
	uint32_t devid = FUNC10(dev);
	device_t child;
	int	error, i, unit;

	ctlr->dev = dev;
	for (i = 0; siis_ids[i].id != 0; i++) {
		if (siis_ids[i].id == devid)
			break;
	}
	ctlr->quirks = siis_ids[i].quirks;
	/* Global memory */
	ctlr->r_grid = FUNC1(0);
	if (!(ctlr->r_gmem = FUNC2(dev, SYS_RES_MEMORY,
	    &ctlr->r_grid, RF_ACTIVE)))
		return (ENXIO);
	ctlr->gctl = FUNC0(ctlr->r_gmem, SIIS_GCTL);
	/* Channels memory */
	ctlr->r_rid = FUNC1(2);
	if (!(ctlr->r_mem = FUNC2(dev, SYS_RES_MEMORY,
	    &ctlr->r_rid, RF_ACTIVE)))
		return (ENXIO);
	/* Setup our own memory management for channels. */
	ctlr->sc_iomem.rm_start = FUNC13(ctlr->r_mem);
	ctlr->sc_iomem.rm_end = FUNC12(ctlr->r_mem);
	ctlr->sc_iomem.rm_type = RMAN_ARRAY;
	ctlr->sc_iomem.rm_descr = "I/O memory addresses";
	if ((error = FUNC14(&ctlr->sc_iomem)) != 0) {
		FUNC4(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
		FUNC4(dev, SYS_RES_MEMORY, ctlr->r_grid, ctlr->r_gmem);
		return (error);
	}
	if ((error = FUNC15(&ctlr->sc_iomem,
	    FUNC13(ctlr->r_mem), FUNC12(ctlr->r_mem))) != 0) {
		FUNC4(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
		FUNC4(dev, SYS_RES_MEMORY, ctlr->r_grid, ctlr->r_gmem);
		FUNC11(&ctlr->sc_iomem);
		return (error);
	}
	FUNC9(dev);
	/* Reset controller */
	FUNC16(dev);
	/* Number of HW channels */
	ctlr->channels = siis_ids[i].ports;
	/* Setup interrupts. */
	if (FUNC17(dev)) {
		FUNC4(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
		FUNC4(dev, SYS_RES_MEMORY, ctlr->r_grid, ctlr->r_gmem);
		FUNC11(&ctlr->sc_iomem);
		return ENXIO;
	}
	/* Attach all channels on this controller */
	for (unit = 0; unit < ctlr->channels; unit++) {
		child = FUNC5(dev, "siisch", -1);
		if (child == NULL)
			FUNC7(dev, "failed to add channel device\n");
		else
			FUNC8(child, (void *)(intptr_t)unit);
	}
	FUNC3(dev);
	return 0;
}