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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int f_max; int f_min; int host_ocr; int caps; int /*<<< orphan*/  mode; } ;
struct jz4780_mmc_softc {int sc_timeout; int /*<<< orphan*/ * sc_clk; int /*<<< orphan*/ * sc_res; int /*<<< orphan*/  sc_intrhand; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_timeoutc; TYPE_1__ sc_host; int /*<<< orphan*/ * sc_dev; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; int /*<<< orphan*/ * sc_req; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  prop ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 size_t JZ_MSC_IRQRES ; 
 size_t JZ_MSC_MEMRES ; 
 int MMC_CAP_4_BIT_DATA ; 
 int MMC_CAP_8_BIT_DATA ; 
 int MMC_CAP_HSPEED ; 
 int MMC_OCR_320_330 ; 
 int MMC_OCR_330_340 ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct jz4780_mmc_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct jz4780_mmc_softc* FUNC13 (int /*<<< orphan*/ *) ; 
 struct sysctl_ctx_list* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct jz4780_mmc_softc*) ; 
 int /*<<< orphan*/  jz4780_mmc_intr ; 
 int jz4780_mmc_pio_mode ; 
 int /*<<< orphan*/  jz4780_mmc_res_spec ; 
 scalar_t__ FUNC19 (struct jz4780_mmc_softc*) ; 
 scalar_t__ FUNC20 (struct jz4780_mmc_softc*) ; 
 int /*<<< orphan*/  mode_sd ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC26(device_t dev)
{
	struct jz4780_mmc_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *tree;
	device_t child;
	ssize_t len;
	pcell_t prop;
	phandle_t node;

	sc = FUNC13(dev);
	sc->sc_dev = dev;
	sc->sc_req = NULL;
	if (FUNC3(dev, jz4780_mmc_res_spec, sc->sc_res) != 0) {
		FUNC16(dev, "cannot allocate device resources\n");
		return (ENXIO);
	}
	sc->sc_bst = FUNC25(sc->sc_res[JZ_MSC_MEMRES]);
	sc->sc_bsh = FUNC24(sc->sc_res[JZ_MSC_MEMRES]);
	if (FUNC5(dev, sc->sc_res[JZ_MSC_IRQRES],
	    INTR_TYPE_MISC | INTR_MPSAFE, NULL, jz4780_mmc_intr, sc,
	    &sc->sc_intrhand)) {
		FUNC4(dev, jz4780_mmc_res_spec, sc->sc_res);
		FUNC16(dev, "cannot setup interrupt handler\n");
		return (ENXIO);
	}
	sc->sc_timeout = 10;
	ctx = FUNC14(dev);
	tree = FUNC2(FUNC15(dev));
	FUNC1(ctx, tree, OID_AUTO, "req_timeout", CTLFLAG_RW,
	    &sc->sc_timeout, 0, "Request timeout in seconds");
	FUNC22(&sc->sc_mtx, FUNC12(sc->sc_dev), "jz4780_mmc",
	    MTX_DEF);
	FUNC8(&sc->sc_timeoutc, &sc->sc_mtx, 0);

	/* Reset controller. */
	if (FUNC19(sc) != 0) {
		FUNC16(dev, "cannot reset the controller\n");
		goto fail;
	}
	if (jz4780_mmc_pio_mode == 0 && FUNC20(sc) != 0) {
		FUNC16(sc->sc_dev, "Couldn't setup DMA!\n");
		jz4780_mmc_pio_mode = 1;
	}
	if (bootverbose)
		FUNC16(sc->sc_dev, "DMA status: %s\n",
		    jz4780_mmc_pio_mode ? "disabled" : "enabled");

	node = FUNC23(dev);
	/* Determine max operating frequency */
	sc->sc_host.f_max = 24000000;
	len = FUNC0(node, "max-frequency", &prop, sizeof(prop));
	if (len / sizeof(prop) == 1)
		sc->sc_host.f_max = prop;
	sc->sc_host.f_min = sc->sc_host.f_max / 128;

	sc->sc_host.host_ocr = MMC_OCR_320_330 | MMC_OCR_330_340;
	sc->sc_host.caps = MMC_CAP_HSPEED;
	sc->sc_host.mode = mode_sd;
	/*
	 * Check for bus-width property, default to both 4 and 8 bit
	 * if no bus width is specified.
	 */
	len = FUNC0(node, "bus-width", &prop, sizeof(prop));
	if (len / sizeof(prop) != 1)
		sc->sc_host.caps |= MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA;
	else if (prop == 8)
		sc->sc_host.caps |= MMC_CAP_8_BIT_DATA;
	else if (prop == 4)
		sc->sc_host.caps |= MMC_CAP_4_BIT_DATA;
	/* Activate the module clock. */
	if (FUNC18(sc) != 0) {
		FUNC16(dev, "cannot activate mmc clock\n");
		goto fail;
	}

	child = FUNC10(dev, "mmc", -1);
	if (child == NULL) {
		FUNC16(dev, "attaching MMC bus failed!\n");
		goto fail;
	}
	if (FUNC17(child) != 0) {
		FUNC16(dev, "attaching MMC child failed!\n");
		FUNC11(dev, child);
		goto fail;
	}

	return (0);

fail:
	FUNC7(&sc->sc_timeoutc);
	FUNC21(&sc->sc_mtx);
	FUNC6(dev, sc->sc_res[JZ_MSC_IRQRES], sc->sc_intrhand);
	FUNC4(dev, jz4780_mmc_res_spec, sc->sc_res);
	if (sc->sc_clk != NULL)
		FUNC9(sc->sc_clk);
	return (ENXIO);
}