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
struct TYPE_2__ {int f_min; int host_ocr; int /*<<< orphan*/  caps; int /*<<< orphan*/  f_max; } ;
struct dwmmc_softc {int use_auto_stop; scalar_t__ desc_count; int fifo_depth; int desc_ring_paddr; TYPE_1__ host; int /*<<< orphan*/  max_hz; int /*<<< orphan*/  use_pio; scalar_t__ pwren_inverted; int /*<<< orphan*/  intr_cookie; int /*<<< orphan*/ * res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ DESC_MAX ; 
 int DWMMC_ERR_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct dwmmc_softc*) ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MMC_CAP_HSPEED ; 
 int /*<<< orphan*/  MMC_CAP_SIGNALING_330 ; 
 int MMC_OCR_320_330 ; 
 int MMC_OCR_330_340 ; 
 int FUNC1 (struct dwmmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMMC_CTRL ; 
 int SDMMC_CTRL_DMA_RESET ; 
 int SDMMC_CTRL_FIFO_RESET ; 
 int SDMMC_CTRL_INT_ENABLE ; 
 int SDMMC_CTRL_RESET ; 
 int /*<<< orphan*/  SDMMC_DBADDR ; 
 int /*<<< orphan*/  SDMMC_FIFOTH ; 
 int SDMMC_FIFOTH_RXWMARK_S ; 
 int /*<<< orphan*/  SDMMC_IDINTEN ; 
 int SDMMC_IDINTEN_MASK ; 
 int SDMMC_IDINTEN_NI ; 
 int SDMMC_IDINTEN_RI ; 
 int SDMMC_IDINTEN_TI ; 
 int /*<<< orphan*/  SDMMC_IDSTS ; 
 int /*<<< orphan*/  SDMMC_INTMASK ; 
 int SDMMC_INTMASK_ACD ; 
 int SDMMC_INTMASK_CD ; 
 int SDMMC_INTMASK_CMD_DONE ; 
 int SDMMC_INTMASK_DTO ; 
 int SDMMC_INTMASK_RXDR ; 
 int SDMMC_INTMASK_TXDR ; 
 int /*<<< orphan*/  SDMMC_PWREN ; 
 int /*<<< orphan*/  SDMMC_RINTSTS ; 
 int /*<<< orphan*/  SDMMC_TMOUT ; 
 int /*<<< orphan*/  SDMMC_VERID ; 
 int /*<<< orphan*/  FUNC2 (struct dwmmc_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dwmmc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 struct dwmmc_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (struct dwmmc_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct dwmmc_softc*) ; 
 scalar_t__ FUNC11 (struct dwmmc_softc*,int) ; 
 int /*<<< orphan*/  dwmmc_intr ; 
 int /*<<< orphan*/  FUNC12 (struct dwmmc_softc*,int) ; 
 int /*<<< orphan*/  dwmmc_spec ; 
 int FUNC13 (struct dwmmc_softc*) ; 

int
FUNC14(device_t dev)
{
	struct dwmmc_softc *sc;
	int error;
	int slot;

	sc = FUNC7(dev);

	sc->dev = dev;

	/* Why not to use Auto Stop? It save a hundred of irq per second */
	sc->use_auto_stop = 1;

	error = FUNC13(sc);
	if (error != 0) {
		FUNC8(dev, "Can't get FDT property.\n");
		return (ENXIO);
	}

	FUNC0(sc);

	if (FUNC3(dev, dwmmc_spec, sc->res)) {
		FUNC8(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Setup interrupt handler. */
	error = FUNC5(dev, sc->res[1], INTR_TYPE_NET | INTR_MPSAFE,
	    NULL, dwmmc_intr, sc, &sc->intr_cookie);
	if (error != 0) {
		FUNC8(dev, "could not setup interrupt handler.\n");
		return (ENXIO);
	}

	FUNC8(dev, "Hardware version ID is %04x\n",
		FUNC1(sc, SDMMC_VERID) & 0xffff);

	if (sc->desc_count == 0)
		sc->desc_count = DESC_MAX;

	/* XXX: we support operation for slot index 0 only */
	slot = 0;
	if (sc->pwren_inverted) {
		FUNC2(sc, SDMMC_PWREN, (0 << slot));
	} else {
		FUNC2(sc, SDMMC_PWREN, (1 << slot));
	}

	/* Reset all */
	if (FUNC11(sc, (SDMMC_CTRL_RESET |
				  SDMMC_CTRL_FIFO_RESET |
				  SDMMC_CTRL_DMA_RESET)))
		return (ENXIO);

	FUNC12(sc, sc->host.f_min);

	if (sc->fifo_depth == 0) {
		sc->fifo_depth = 1 +
		    ((FUNC1(sc, SDMMC_FIFOTH) >> SDMMC_FIFOTH_RXWMARK_S) & 0xfff);
		FUNC8(dev, "No fifo-depth, using FIFOTH %x\n",
		    sc->fifo_depth);
	}

	if (!sc->use_pio) {
		FUNC10(sc);
		if (FUNC9(sc))
			return (ENXIO);

		/* Install desc base */
		FUNC2(sc, SDMMC_DBADDR, sc->desc_ring_paddr);

		/* Enable DMA interrupts */
		FUNC2(sc, SDMMC_IDSTS, SDMMC_IDINTEN_MASK);
		FUNC2(sc, SDMMC_IDINTEN, (SDMMC_IDINTEN_NI |
					   SDMMC_IDINTEN_RI |
					   SDMMC_IDINTEN_TI));
	}

	/* Clear and disable interrups for a while */
	FUNC2(sc, SDMMC_RINTSTS, 0xffffffff);
	FUNC2(sc, SDMMC_INTMASK, 0);

	/* Maximum timeout */
	FUNC2(sc, SDMMC_TMOUT, 0xffffffff);

	/* Enable interrupts */
	FUNC2(sc, SDMMC_RINTSTS, 0xffffffff);
	FUNC2(sc, SDMMC_INTMASK, (SDMMC_INTMASK_CMD_DONE |
				   SDMMC_INTMASK_DTO |
				   SDMMC_INTMASK_ACD |
				   SDMMC_INTMASK_TXDR |
				   SDMMC_INTMASK_RXDR |
				   DWMMC_ERR_FLAGS |
				   SDMMC_INTMASK_CD));
	FUNC2(sc, SDMMC_CTRL, SDMMC_CTRL_INT_ENABLE);

	sc->host.f_min = 400000;
	sc->host.f_max = sc->max_hz;
	sc->host.host_ocr = MMC_OCR_320_330 | MMC_OCR_330_340;
	sc->host.caps |= MMC_CAP_HSPEED;
	sc->host.caps |= MMC_CAP_SIGNALING_330;

	FUNC6(dev, "mmc", -1);
	return (FUNC4(dev));
}