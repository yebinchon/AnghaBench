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
struct TYPE_2__ {char* rm_descr; void* rm_type; } ;
struct generic_pcie_core_softc {TYPE_1__ io_rman; TYPE_1__ mem_rman; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  dmat; scalar_t__ coherent; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_COHERENT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 void* RMAN_ARRAY ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct generic_pcie_core_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*) ; 

int
FUNC8(device_t dev)
{
	struct generic_pcie_core_softc *sc;
	int error;
	int rid;

	sc = FUNC3(dev);
	sc->dev = dev;

	/* Create the parent DMA tag to pass down the coherent flag */
	error = FUNC1(FUNC2(dev), /* parent */
	    1, 0,				/* alignment, bounds */
	    BUS_SPACE_MAXADDR,			/* lowaddr */
	    BUS_SPACE_MAXADDR,			/* highaddr */
	    NULL, NULL,				/* filter, filterarg */
	    BUS_SPACE_MAXSIZE,			/* maxsize */
	    BUS_SPACE_UNRESTRICTED,		/* nsegments */
	    BUS_SPACE_MAXSIZE,			/* maxsegsize */
	    sc->coherent ? BUS_DMA_COHERENT : 0, /* flags */
	    NULL, NULL,				/* lockfunc, lockarg */
	    &sc->dmat);
	if (error != 0)
		return (error);

	rid = 0;
	sc->res = FUNC0(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (sc->res == NULL) {
		FUNC4(dev, "could not map memory.\n");
		return (ENXIO);
	}

	sc->bst = FUNC6(sc->res);
	sc->bsh = FUNC5(sc->res);

	sc->mem_rman.rm_type = RMAN_ARRAY;
	sc->mem_rman.rm_descr = "PCIe Memory";
	sc->io_rman.rm_type = RMAN_ARRAY;
	sc->io_rman.rm_descr = "PCIe IO window";

	/* Initialize rman and allocate memory regions */
	error = FUNC7(&sc->mem_rman);
	if (error) {
		FUNC4(dev, "rman_init() failed. error = %d\n", error);
		return (error);
	}

	error = FUNC7(&sc->io_rman);
	if (error) {
		FUNC4(dev, "rman_init() failed. error = %d\n", error);
		return (error);
	}

	return (0);
}