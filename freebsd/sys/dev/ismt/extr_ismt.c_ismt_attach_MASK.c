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
struct ismt_softc {int mmio_rid; int desc_bus_addr; int dma_buffer_bus_addr; int using_msi; int intr_rid; int /*<<< orphan*/  intr_handle; int /*<<< orphan*/ * intr_res; int /*<<< orphan*/ * mmio_res; int /*<<< orphan*/  dma_buffer; int /*<<< orphan*/  dma_buffer_dma_map; int /*<<< orphan*/  dma_buffer_dma_tag; int /*<<< orphan*/  desc; int /*<<< orphan*/  desc_dma_map; int /*<<< orphan*/  desc_dma_tag; int /*<<< orphan*/  mmio_handle; int /*<<< orphan*/  mmio_tag; int /*<<< orphan*/ * smbdev; int /*<<< orphan*/  pcidev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_WAITOK ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  DESC_SIZE ; 
 int /*<<< orphan*/  DMA_BUFFER_SIZE ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int ISMT_DESC_ENTRIES ; 
 int ISMT_MCTRL_MEIE ; 
 int ISMT_MDS_MASK ; 
 scalar_t__ ISMT_MSTR_MCTRL ; 
 scalar_t__ ISMT_MSTR_MDBA ; 
 scalar_t__ ISMT_MSTR_MDS ; 
 scalar_t__ ISMT_MSTR_MSTS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ismt_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 struct ismt_softc* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ismt_intr ; 
 int /*<<< orphan*/  ismt_single_map ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC22(device_t dev)
{
	struct ismt_softc *sc = FUNC13(dev);
	int err, num_vectors, val;

	sc->pcidev = dev;
	FUNC17(dev);

	if ((sc->smbdev = FUNC12(dev, "smbus", -1)) == NULL) {
		FUNC14(dev, "no smbus child found\n");
		err = ENXIO;
		goto fail;
	}

	sc->mmio_rid = FUNC1(0);
	sc->mmio_res = FUNC2(dev, SYS_RES_MEMORY,
	    &sc->mmio_rid, RF_ACTIVE);
	if (sc->mmio_res == NULL) {
		FUNC14(dev, "cannot allocate mmio region\n");
		err = ENOMEM;
		goto fail;
	}

	sc->mmio_tag = FUNC21(sc->mmio_res);
	sc->mmio_handle = FUNC20(sc->mmio_res);

	/* Attach "smbus" child */
	if ((err = FUNC7(dev)) != 0) {
		FUNC14(dev, "failed to attach child: %d\n", err);
		err = ENXIO;
		goto fail;
	}

	FUNC3(FUNC8(dev), 4, PAGE_SIZE,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL,
	    DESC_SIZE, 1, DESC_SIZE,
	    0, NULL, NULL, &sc->desc_dma_tag);

	FUNC3(FUNC8(dev), 4, PAGE_SIZE,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL,
	    DMA_BUFFER_SIZE, 1, DMA_BUFFER_SIZE,
	    0, NULL, NULL, &sc->dma_buffer_dma_tag);

	FUNC4(sc->desc_dma_tag, 0,
	    &sc->desc_dma_map);
	FUNC4(sc->dma_buffer_dma_tag, 0,
	    &sc->dma_buffer_dma_map);

	FUNC6(sc->desc_dma_tag,
	    (void **)&sc->desc, BUS_DMA_WAITOK,
	    &sc->desc_dma_map);
	FUNC6(sc->dma_buffer_dma_tag,
	    (void **)&sc->dma_buffer, BUS_DMA_WAITOK,
	    &sc->dma_buffer_dma_map);

	FUNC5(sc->desc_dma_tag,
	    sc->desc_dma_map, sc->desc, DESC_SIZE,
	    ismt_single_map, &sc->desc_bus_addr, 0);
	FUNC5(sc->dma_buffer_dma_tag,
	    sc->dma_buffer_dma_map, sc->dma_buffer, DMA_BUFFER_SIZE,
	    ismt_single_map, &sc->dma_buffer_bus_addr, 0);

	FUNC11(sc->mmio_res, ISMT_MSTR_MDBA,
	    (sc->desc_bus_addr & 0xFFFFFFFFLL));
	FUNC11(sc->mmio_res, ISMT_MSTR_MDBA + 4,
	    (sc->desc_bus_addr >> 32));

	/* initialize the Master Control Register (MCTRL) */
	FUNC11(sc->mmio_res, ISMT_MSTR_MCTRL, ISMT_MCTRL_MEIE);

	/* initialize the Master Status Register (MSTS) */
	FUNC11(sc->mmio_res, ISMT_MSTR_MSTS, 0);

	/* initialize the Master Descriptor Size (MDS) */
	val = FUNC9(sc->mmio_res, ISMT_MSTR_MDS);
	val &= ~ISMT_MDS_MASK;
	val |= (ISMT_DESC_ENTRIES - 1);
	FUNC11(sc->mmio_res, ISMT_MSTR_MDS, val);

	sc->using_msi = 1;

	if (FUNC18(dev) == 0) {
		sc->using_msi = 0;
		goto intx;
	}

	num_vectors = 1;
	if (FUNC16(dev, &num_vectors) != 0) {
		sc->using_msi = 0;
		goto intx;
	}

	sc->intr_rid = 1;
	sc->intr_res = FUNC2(dev, SYS_RES_IRQ,
	    &sc->intr_rid, RF_ACTIVE);

	if (sc->intr_res == NULL) {
		sc->using_msi = 0;
		FUNC19(dev);
	}

intx:
	if (sc->using_msi == 0) {
		sc->intr_rid = 0;
		sc->intr_res = FUNC2(dev, SYS_RES_IRQ,
		    &sc->intr_rid, RF_SHAREABLE | RF_ACTIVE);
		if (sc->intr_res == NULL) {
			FUNC14(dev, "cannot allocate irq\n");
			err = ENXIO;
			goto fail;
		}
	}

	FUNC0(dev, "using_msi = %d\n", sc->using_msi);

	err = FUNC10(dev, sc->intr_res,
	    INTR_TYPE_MISC | INTR_MPSAFE, NULL, ismt_intr, sc,
	    &sc->intr_handle);
	if (err != 0) {
		FUNC14(dev, "cannot setup interrupt\n");
		err = ENXIO;
		goto fail;
	}

	return (0);

fail:
	FUNC15(dev);
	return (err);
}