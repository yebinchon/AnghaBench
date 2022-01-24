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
struct smist_softc {int /*<<< orphan*/  command; int /*<<< orphan*/  smi_cmd; } ;
struct set_ownership_data {scalar_t__ result; int /*<<< orphan*/  buf; int /*<<< orphan*/  command; int /*<<< orphan*/  smi_cmd; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct set_ownership_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 struct smist_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  set_ownership_cb ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct smist_softc *sc;
	struct set_ownership_data cb_data;
	bus_dma_tag_t tag;
	bus_dmamap_t map;

	/*
	 * Specify the region to store the magic string.  Since its address is
	 * passed to the BIOS in a 32-bit register, we have to make sure it is
	 * located in a physical page below 4 GB (i.e., for PAE.)
	 */
	sc = FUNC7(dev);
	if (FUNC1(/*parent*/ NULL,
	    /*alignment*/ PAGE_SIZE, /*no boundary*/ 0,
	    /*lowaddr*/ BUS_SPACE_MAXADDR_32BIT, /*highaddr*/ BUS_SPACE_MAXADDR,
	    NULL, NULL, /*maxsize*/ PAGE_SIZE, /*segments*/ 1,
	    /*maxsegsize*/ PAGE_SIZE, 0, busdma_lock_mutex, &Giant,
	    &tag) != 0) {
		FUNC8(dev, "can't create mem tag\n");
		return (ENXIO);
	}
	if (FUNC5(tag, &cb_data.buf, BUS_DMA_NOWAIT, &map) != 0) {
		FUNC2(tag);
		FUNC8(dev, "can't alloc mapped mem\n");
		return (ENXIO);
	}

	/* Load the physical page map and take ownership in the callback. */
	cb_data.smi_cmd = sc->smi_cmd;
	cb_data.command = sc->command;
	if (FUNC3(tag, map, cb_data.buf, PAGE_SIZE, set_ownership_cb,
	    &cb_data, BUS_DMA_NOWAIT) != 0) {
		FUNC6(tag, cb_data.buf, map);
		FUNC2(tag);
		FUNC8(dev, "can't load mem\n");
		return (ENXIO);
	}
	FUNC0(dev, "taking ownership over BIOS return %d\n", cb_data.result);
	FUNC4(tag, map);
	FUNC6(tag, cb_data.buf, map);
	FUNC2(tag);
	return (cb_data.result ? ENXIO : 0);
}