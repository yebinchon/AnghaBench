#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {TYPE_1__ sc_bus; int /*<<< orphan*/ ** sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_devices; } ;
struct octusb_octeon_softc {TYPE_2__ sc_dci; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 scalar_t__ OCTEON_IRQ_USB0 ; 
 int /*<<< orphan*/  OCTUSB_MAX_DEVICES ; 
 int OCTUSB_MAX_PORTS ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct octusb_octeon_softc*,struct octusb_octeon_softc*,...) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct octusb_octeon_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 scalar_t__ octusb_interrupt ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct octusb_octeon_softc *sc = FUNC5(dev);
	int err;
	int rid;
	int nports;
	int i;

	/* setup controller interface softc */

	/* initialise some bus fields */
	sc->sc_dci.sc_bus.parent = dev;
	sc->sc_dci.sc_bus.devices = sc->sc_dci.sc_devices;
	sc->sc_dci.sc_bus.devices_max = OCTUSB_MAX_DEVICES;
	sc->sc_dci.sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC11(&sc->sc_dci.sc_bus,
	    FUNC0(dev), NULL)) {
		return (ENOMEM);
	}
	nports = FUNC3();
	if (nports > OCTUSB_MAX_PORTS)
		FUNC10("octusb: too many USB ports %d", nports);
	for (i = 0; i < nports; i++) {
		rid = 0;
		sc->sc_dci.sc_irq_res[i] =
		    FUNC1(dev, SYS_RES_IRQ, &rid,
			       OCTEON_IRQ_USB0 + i, OCTEON_IRQ_USB0 + i, 1, RF_ACTIVE);
		if (!(sc->sc_dci.sc_irq_res[i])) {
			goto error;
		}

#if (__FreeBSD_version >= 700031)
		err = bus_setup_intr(dev, sc->sc_dci.sc_irq_res[i], INTR_TYPE_BIO | INTR_MPSAFE,
		    NULL, (driver_intr_t *)octusb_interrupt, sc, &sc->sc_dci.sc_intr_hdl[i]);
#else
		err = FUNC2(dev, sc->sc_dci.sc_irq_res[i], INTR_TYPE_BIO | INTR_MPSAFE,
		    (driver_intr_t *)octusb_interrupt, sc, &sc->sc_dci.sc_intr_hdl[i]);
#endif
		if (err) {
			sc->sc_dci.sc_intr_hdl[i] = NULL;
			goto error;
		}
	}

	sc->sc_dci.sc_bus.bdev = FUNC4(dev, "usbus", -1);
	if (!(sc->sc_dci.sc_bus.bdev)) {
		goto error;
	}
	FUNC7(sc->sc_dci.sc_bus.bdev, &sc->sc_dci.sc_bus);


	err = FUNC8(&sc->sc_dci);
	if (!err) {
		err = FUNC6(sc->sc_dci.sc_bus.bdev);
	}
	if (err) {
		goto error;
	}
	return (0);

error:
	FUNC9(dev);
	return (ENXIO);
}