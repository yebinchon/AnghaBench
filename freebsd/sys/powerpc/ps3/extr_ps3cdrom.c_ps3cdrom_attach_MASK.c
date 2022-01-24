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
typedef  union ccb {int dummy; } ccb ;
struct ps3cdrom_xfer {int /*<<< orphan*/  x_dmamap; struct ps3cdrom_softc* x_sc; } ;
struct ps3cdrom_softc {int /*<<< orphan*/  sc_irq; scalar_t__ sc_irqid; int /*<<< orphan*/  sc_irqctx; int /*<<< orphan*/  sc_dmatag; int /*<<< orphan*/  sc_free_xferq; scalar_t__ sc_sim; int /*<<< orphan*/  sc_path; int /*<<< orphan*/  sc_mtx; struct ps3cdrom_xfer* sc_xfer; int /*<<< orphan*/  sc_active_xferq; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  func_code; } ;
struct ccb_setasync {scalar_t__ callback_arg; int /*<<< orphan*/  callback; int /*<<< orphan*/  event_enable; TYPE_1__ ccb_h; } ;
struct cam_devq {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  BUS_DMA_COHERENT ; 
 int BUS_PROBE_SPECIFIC ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int CAM_REQ_CMP ; 
 int CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_CAM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct ps3cdrom_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ps3cdrom_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ps3cdrom_softc*) ; 
 int PS3CDROM_MAX_XFERS ; 
 int /*<<< orphan*/  FUNC4 (struct ps3cdrom_softc*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 struct ps3cdrom_xfer* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct ps3cdrom_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct ps3cdrom_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XPT_SASYNC_CB ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ps3cdrom_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ps3cdrom_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 struct cam_devq* FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (struct cam_devq*) ; 
 struct ps3cdrom_softc* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ps3cdrom_action ; 
 int /*<<< orphan*/  ps3cdrom_async ; 
 int /*<<< orphan*/  ps3cdrom_intr ; 
 int /*<<< orphan*/  ps3cdrom_poll ; 
 int /*<<< orphan*/  x_queue ; 
 int /*<<< orphan*/  FUNC26 (union ccb*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC31(device_t dev)
{
	struct ps3cdrom_softc *sc = FUNC23(dev);
	struct cam_devq *devq;
	struct ps3cdrom_xfer *xp;
	struct ccb_setasync csa;
	int i, err;

	sc->sc_dev = dev;

	FUNC3(sc);

	/* Setup interrupt handler */

	sc->sc_irqid = 0;
	sc->sc_irq = FUNC9(dev, SYS_RES_IRQ, &sc->sc_irqid,
	    RF_ACTIVE);
	if (!sc->sc_irq) {
		FUNC25(dev, "Could not allocate IRQ\n");
		err = ENXIO;
		goto fail_destroy_lock;
	}

	err = FUNC16(dev, sc->sc_irq,
	    INTR_TYPE_CAM | INTR_MPSAFE | INTR_ENTROPY,
	    NULL, ps3cdrom_intr, sc, &sc->sc_irqctx);
	if (err) {
		FUNC25(dev, "Could not setup IRQ\n");
		err = ENXIO;
		goto fail_release_intr;
	}

	/* Setup DMA */

	err = FUNC10(FUNC14(dev), 4096, 0,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL,
	    BUS_SPACE_UNRESTRICTED, 1, PAGE_SIZE, 0,
	    busdma_lock_mutex, &sc->sc_mtx, &sc->sc_dmatag);
	if (err) {
		FUNC25(dev, "Could not create DMA tag\n");
		err = ENXIO;
		goto fail_teardown_intr;
	}

	/* Setup transfer queues */

	FUNC6(&sc->sc_active_xferq);
	FUNC6(&sc->sc_free_xferq);

	for (i = 0; i < PS3CDROM_MAX_XFERS; i++) {
		xp = &sc->sc_xfer[i];
		xp->x_sc = sc;

		err = FUNC12(sc->sc_dmatag, BUS_DMA_COHERENT,
		    &xp->x_dmamap);
		if (err) {
			FUNC25(dev, "Could not create DMA map (%d)\n",
			    err);
			goto fail_destroy_dmamap;
		}

		FUNC7(&sc->sc_free_xferq, xp, x_queue);
	}

	/* Setup CAM */

	devq = FUNC21(PS3CDROM_MAX_XFERS - 1);
	if (!devq) {
		FUNC25(dev, "Could not allocate SIM queue\n");
		err = ENOMEM;
		goto fail_destroy_dmatag;
	}

	sc->sc_sim = FUNC18(ps3cdrom_action, ps3cdrom_poll, "ps3cdrom",
	    sc, FUNC24(dev), &sc->sc_mtx, PS3CDROM_MAX_XFERS - 1, 0,
	    devq);
	if (!sc->sc_sim) {
		FUNC25(dev, "Could not allocate SIM\n");
		FUNC22(devq);
		err = ENOMEM;
		goto fail_destroy_dmatag;
	}

	/* Setup XPT */

	FUNC1(sc);

	err = FUNC28(sc->sc_sim, dev, 0);
	if (err != CAM_SUCCESS) {
		FUNC25(dev, "Could not register XPT bus\n");
		err = ENXIO;
		FUNC4(sc);
		goto fail_free_sim;
	}

	err = FUNC29(&sc->sc_path, NULL, FUNC20(sc->sc_sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD);
	if (err != CAM_REQ_CMP) {
		FUNC25(dev, "Could not create XPT path\n");
		err = ENOMEM;
		FUNC4(sc);
		goto fail_unregister_xpt_bus;
	}

	FUNC30(&csa.ccb_h, sc->sc_path, 5);
	csa.ccb_h.func_code = XPT_SASYNC_CB;
	csa.event_enable = AC_LOST_DEVICE;
	csa.callback = ps3cdrom_async;
	csa.callback_arg = sc->sc_sim;
	FUNC26((union ccb *) &csa);

	FUNC0(sc->sc_path, CAM_DEBUG_TRACE,
	    ("registered SIM for ps3cdrom%d\n", FUNC24(dev)));

	FUNC4(sc);

	return (BUS_PROBE_SPECIFIC);

fail_unregister_xpt_bus:

	FUNC27(FUNC20(sc->sc_sim));

fail_free_sim:

	FUNC19(sc->sc_sim, TRUE);

fail_destroy_dmamap:

	while ((xp = FUNC5(&sc->sc_free_xferq))) {
		FUNC8(&sc->sc_free_xferq, xp, x_queue);
		FUNC13(sc->sc_dmatag, xp->x_dmamap);
	}

fail_destroy_dmatag:

	FUNC11(sc->sc_dmatag);

fail_teardown_intr:

	FUNC17(dev, sc->sc_irq, sc->sc_irqctx);

fail_release_intr:

	FUNC15(dev, SYS_RES_IRQ, sc->sc_irqid, sc->sc_irq);

fail_destroy_lock:

	FUNC2(sc);

	return (err);
}