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
struct TYPE_2__ {int /*<<< orphan*/ * bdev; } ;
struct xhci_softc {TYPE_1__ sc_bus; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_io_res; } ;
struct snps_dwc3_softc {int /*<<< orphan*/  mem_res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; struct xhci_softc sc; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct xhci_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct snps_dwc3_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (struct xhci_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ xhci_interrupt ; 
 int FUNC11 (struct xhci_softc*) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct snps_dwc3_softc *snps_sc = FUNC3(dev);
	struct xhci_softc *sc = &snps_sc->sc;
	int err = 0, rid = 0;

	sc->sc_io_res = snps_sc->mem_res;
	sc->sc_io_tag = snps_sc->bst;
	sc->sc_io_hdl = snps_sc->bsh;
	sc->sc_io_size = FUNC8(snps_sc->mem_res);

	sc->sc_irq_res = FUNC0(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);
	if (sc->sc_irq_res == NULL) {
		FUNC4(dev, "Failed to allocate IRQ\n");
		return (ENXIO);
	}

	sc->sc_bus.bdev = FUNC2(dev, "usbus", -1);
	if (sc->sc_bus.bdev == NULL) {
		FUNC4(dev, "Failed to add USB device\n");
		return (ENXIO);
	}

	FUNC7(sc->sc_bus.bdev, &sc->sc_bus);

	FUNC9(sc->sc_vendor, "Synopsys");
	FUNC6(sc->sc_bus.bdev, "Synopsys");

	err = FUNC1(dev, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)xhci_interrupt, sc, &sc->sc_intr_hdl);
	if (err != 0) {
		FUNC4(dev, "Failed to setup IRQ, %d\n", err);
		sc->sc_intr_hdl = NULL;
		return (err);
	}

	err = FUNC10(sc, dev, 1);
	if (err != 0) {
		FUNC4(dev, "Failed to init XHCI, with error %d\n", err);
		return (ENXIO);
	}

	err = FUNC11(sc);
	if (err != 0) {
		FUNC4(dev, "Failed to start XHCI controller, with error %d\n", err);
		return (ENXIO);
	}

	FUNC4(*sc->sc_bus.bdev, "trying to attach\n");
	err = FUNC5(sc->sc_bus.bdev);
	if (err != 0) {
		FUNC4(dev, "Failed to initialize USB, with error %d\n", err);
		return (ENXIO);
	}

	return (0);
}