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
struct ps3bus_softc {int rcount; TYPE_1__* regions; } ;
struct ps3bus_devinfo {scalar_t__ bustype; scalar_t__ devtype; int /*<<< orphan*/ * dma_tag; int /*<<< orphan*/  iommu_mtx; int /*<<< orphan*/ * dma_base; int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/ * bus_dma_tag_t ;
struct TYPE_2__ {int /*<<< orphan*/  mr_size; int /*<<< orphan*/  mr_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE ; 
 scalar_t__ PS3_BUSTYPE_STORAGE ; 
 scalar_t__ PS3_BUSTYPE_SYSBUS ; 
 scalar_t__ PS3_DEVTYPE_USB ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ps3bus_devinfo*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 struct ps3bus_devinfo* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ps3bus_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bus_dma_tag_t
FUNC10(device_t dev, device_t child)
{
	struct ps3bus_devinfo *dinfo = FUNC3(child);
	struct ps3bus_softc *sc = FUNC4(dev);
	int i, err, flags, pagesize;

	if (dinfo->bustype != PS3_BUSTYPE_SYSBUS &&
	    dinfo->bustype != PS3_BUSTYPE_STORAGE)
		return (FUNC2(dev));

	FUNC8(&dinfo->iommu_mtx);
	if (dinfo->dma_tag != NULL) {
		FUNC9(&dinfo->iommu_mtx);
		return (dinfo->dma_tag);
	}

	flags = 0; /* 32-bit mode */
	if (dinfo->bustype == PS3_BUSTYPE_SYSBUS &&
	    dinfo->devtype == PS3_DEVTYPE_USB)
		flags = 2; /* 8-bit mode */

	pagesize = 24; /* log_2(16 MB) */
	if (dinfo->bustype == PS3_BUSTYPE_STORAGE)
		pagesize = 12; /* 4 KB */

	for (i = 0; i < sc->rcount; i++) {
		err = FUNC6(dinfo->bus, dinfo->dev,
		    sc->regions[i].mr_size, pagesize, flags,
		    &dinfo->dma_base[i]);
		if (err != 0) {
			FUNC5(child,
			    "could not allocate DMA region %d: %d\n", i, err);
			goto fail;
		}

		err = FUNC7(dinfo->bus, dinfo->dev,
		    sc->regions[i].mr_start, dinfo->dma_base[i],
		    sc->regions[i].mr_size,
		    0xf800000000000800UL /* Cell Handbook Figure 7.3.4.1 */);
		if (err != 0) {
			FUNC5(child,
			    "could not map DMA region %d: %d\n", i, err);
			goto fail;
		}
	}

	err = FUNC0(FUNC2(dev),
	    1, 0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
	    NULL, NULL, BUS_SPACE_MAXSIZE, 0, BUS_SPACE_MAXSIZE,
	    0, NULL, NULL, &dinfo->dma_tag);

	/*
	 * Note: storage devices have IOMMU mappings set up by the hypervisor,
	 * but use physical, non-translated addresses. The above IOMMU
	 * initialization is necessary for the hypervisor to be able to set up
	 * the mappings, but actual DMA mappings should not use the IOMMU
	 * routines.
	 */
	if (dinfo->bustype != PS3_BUSTYPE_STORAGE)
		FUNC1(dinfo->dma_tag, dev, dinfo);

fail:
	FUNC9(&dinfo->iommu_mtx);

	if (err)
		return (NULL);

	return (dinfo->dma_tag);
}