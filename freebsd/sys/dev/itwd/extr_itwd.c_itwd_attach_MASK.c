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
typedef  int uint8_t ;
struct itwd_softc {int /*<<< orphan*/  wd_ev; int /*<<< orphan*/ * intr_res; scalar_t__ intr_rid; int /*<<< orphan*/  intr_handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct itwd_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  itwd_intr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  watchdog_list ; 
 int /*<<< orphan*/  wd_func ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct itwd_softc *sc = FUNC6(dev);
	int irq = 0;
	int nmi = 0;
	int error;

	/* First, reset the timeout, just in case. */
	FUNC8(dev, 0x74, 0);
	FUNC8(dev, 0x73, 0);

	FUNC1("dev.itwd.irq", &irq);
	FUNC1("dev.itwd.nmi", &nmi);
	if (irq < 0 || irq > 15) {
		FUNC7(dev, "Ignoring invalid IRQ value %d\n", irq);
		irq = 0;
	}
	if (irq == 0 && nmi) {
		FUNC7(dev, "Ignoring NMI mode if IRQ is not set\n");
		nmi = 0;
	}

	/*
	 * NB: if the interrupt has been configured for the NMI delivery,
	 * then it is not available for the regular interrupt allocation.
	 * Thus, we configure the hardware to generate the interrupt,
	 * but do not attempt to allocate and setup it as a regular
	 * interrupt.
	 */
	if (irq != 0 && !nmi) {
		sc->intr_rid = 0;
		FUNC4(dev, SYS_RES_IRQ, sc->intr_rid, irq, 1);

		sc->intr_res = FUNC2(dev, SYS_RES_IRQ,
		    &sc->intr_rid, RF_ACTIVE);
		if (sc->intr_res == NULL) {
			FUNC7(dev, "unable to map interrupt\n");
			return (ENXIO);
		}
		error = FUNC5(dev, sc->intr_res,
		    INTR_TYPE_MISC | INTR_MPSAFE, NULL, itwd_intr, dev,
		    &sc->intr_handle);
		if (error != 0) {
			FUNC3(dev, SYS_RES_IRQ,
			    sc->intr_rid, sc->intr_res);
			FUNC7(dev, "Unable to setup irq: error %d\n",
			    error);
			return (ENXIO);
		}
	}
	if (irq != 0) {
		FUNC7(dev, "Using IRQ%d to signal timeout\n", irq);
	} else {
		/* System reset via KBRST. */
		irq = 0x40;
		FUNC7(dev, "Configured for system reset on timeout\n");
	}

	FUNC8(dev, 0x71, 0);
	FUNC8(dev, 0x72, 0x80 | (uint8_t)irq);

	sc->wd_ev = FUNC0(watchdog_list, wd_func, dev, 0);
	return (0);
}