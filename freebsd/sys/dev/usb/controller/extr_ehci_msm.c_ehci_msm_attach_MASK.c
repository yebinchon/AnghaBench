#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {int sc_flags; TYPE_2__ sc_bus; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/  sc_vendor; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_size; void* sc_io_tag; int /*<<< orphan*/  sc_devices; } ;
struct ehci_msm_softc {int /*<<< orphan*/ * res; TYPE_1__ base; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_HC_DEVSTR ; 
 int /*<<< orphan*/  EHCI_MAX_DEVICES ; 
 int EHCI_SCFLG_DONEINIT ; 
 int EHCI_SCFLG_DONTRESET ; 
 int EHCI_SCFLG_NORESTERM ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ehci_msm_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 scalar_t__ ehci_interrupt ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ehci_msm_spec ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct ehci_msm_softc *esc;
	bus_space_handle_t bsh;
	ehci_softc_t *sc;
	int err;

	esc = FUNC6(dev);
	sc = &esc->base;
	sc->sc_bus.parent = dev;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	if (FUNC1(dev, ehci_msm_spec, esc->res)) {
		FUNC7(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	sc->sc_io_tag = FUNC15(esc->res[0]);

	/* Get all DMA memory */
	if (FUNC18(&sc->sc_bus,
	    FUNC0(dev), &ehci_iterate_hw_softc)) {
		return (ENOMEM);
	}

	/* EHCI registers */
	sc->sc_io_tag = FUNC15(esc->res[0]);
	bsh = FUNC14(esc->res[0]);
	sc->sc_io_size = FUNC16(esc->res[0]);

	if (FUNC3(sc->sc_io_tag, bsh, 0x100,
	    sc->sc_io_size, &sc->sc_io_hdl) != 0)
		FUNC13("%s: unable to subregion USB host registers",
		    FUNC5(dev));

	sc->sc_bus.bdev = FUNC4(dev, "usbus", -1);
	if (!sc->sc_bus.bdev) {
		FUNC7(dev, "Could not add USB device\n");
		goto error;
	}
	FUNC10(sc->sc_bus.bdev, &sc->sc_bus);
	FUNC9(sc->sc_bus.bdev, EHCI_HC_DEVSTR);

	FUNC17(sc->sc_vendor, "Qualcomm");

	err = FUNC2(dev, esc->res[2], INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);
	if (err) {
		FUNC7(dev, "Could not setup irq, %d\n", err);
		sc->sc_intr_hdl = NULL;
		goto error;
	}

	sc->sc_flags |= EHCI_SCFLG_DONTRESET | EHCI_SCFLG_NORESTERM;

	err = FUNC11(sc);
	if (!err) {
		sc->sc_flags |= EHCI_SCFLG_DONEINIT;
		err = FUNC8(sc->sc_bus.bdev);
	}

	if (err) {
		FUNC7(dev, "USB init failed err=%d\n", err);
		goto error;
	}
	return (0);

error:
	FUNC12(dev);
	return (ENXIO);
}