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
typedef  int uint8_t ;
struct TYPE_2__ {int status_bus_reset; int status_suspend; int change_suspend; int change_connect; } ;
struct uss820dci_softc {scalar_t__ sc_xfer_complete; int /*<<< orphan*/  sc_bus; TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int USS820_DCI_THREAD_IRQ ; 
 int FUNC5 (struct uss820dci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USS820_SBI ; 
 int /*<<< orphan*/  USS820_SBI1 ; 
 int /*<<< orphan*/  USS820_SSR ; 
 int USS820_SSR_RESET ; 
 int USS820_SSR_RESUME ; 
 int USS820_SSR_SUSPEND ; 
 int /*<<< orphan*/  FUNC6 (struct uss820dci_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct uss820dci_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct uss820dci_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct uss820dci_softc*,int) ; 

void
FUNC10(void *arg)
{
	struct uss820dci_softc *sc = arg;
	uint8_t ssr;
	uint8_t event;

	FUNC1(&sc->sc_bus);
	FUNC2(&sc->sc_bus);

	ssr = FUNC5(sc, USS820_SSR);

	/* acknowledge all interrupts */

	FUNC8(sc, USS820_SSR, ~USS820_DCI_THREAD_IRQ, 0);

	/* check for any bus state change interrupts */

	if (ssr & USS820_DCI_THREAD_IRQ) {

		event = 0;

		if (ssr & USS820_SSR_RESET) {
			sc->sc_flags.status_bus_reset = 1;
			sc->sc_flags.status_suspend = 0;
			sc->sc_flags.change_suspend = 0;
			sc->sc_flags.change_connect = 1;

			/* disable resume interrupt */
			FUNC9(sc, 1);

			event = 1;
		}
		/*
	         * If "RESUME" and "SUSPEND" is set at the same time
	         * we interpret that like "RESUME". Resume is set when
	         * there is at least 3 milliseconds of inactivity on
	         * the USB BUS.
	         */
		if (ssr & USS820_SSR_RESUME) {
			if (sc->sc_flags.status_suspend) {
				sc->sc_flags.status_suspend = 0;
				sc->sc_flags.change_suspend = 1;
				/* disable resume interrupt */
				FUNC9(sc, 1);
				event = 1;
			}
		} else if (ssr & USS820_SSR_SUSPEND) {
			if (!sc->sc_flags.status_suspend) {
				sc->sc_flags.status_suspend = 1;
				sc->sc_flags.change_suspend = 1;
				/* enable resume interrupt */
				FUNC9(sc, 0);
				event = 1;
			}
		}
		if (event) {

			FUNC0("real bus interrupt 0x%02x\n", ssr);

			/* complete root HUB interrupt endpoint */
			FUNC7(sc);
		}
	}
	/* acknowledge all SBI interrupts */
	FUNC8(sc, USS820_SBI, 0, 0);

	/* acknowledge all SBI1 interrupts */
	FUNC8(sc, USS820_SBI1, 0, 0);

	if (sc->sc_xfer_complete != 0) {
		sc->sc_xfer_complete = 0;

		/* complete FIFOs, if any */
		FUNC6(sc);
	}
	FUNC3(&sc->sc_bus);
	FUNC4(&sc->sc_bus);
}