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
typedef  int uint32_t ;
struct TYPE_2__ {int status_bus_reset; int status_suspend; int change_suspend; int change_connect; } ;
struct saf1761_otg_softc {scalar_t__ sc_xfer_complete; int /*<<< orphan*/  sc_bus; TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int SAF1761_DCINTERRUPT_THREAD_IRQ ; 
 int FUNC1 (struct saf1761_otg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct saf1761_otg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SOTG_ADDRESS ; 
 int SOTG_ADDRESS_ENABLE ; 
 int /*<<< orphan*/  SOTG_DCINTERRUPT ; 
 int SOTG_DCINTERRUPT_IEBRST ; 
 int SOTG_DCINTERRUPT_IERESM ; 
 int SOTG_DCINTERRUPT_IESUSP ; 
 int SOTG_DCINTERRUPT_IEVBUS ; 
 int /*<<< orphan*/  SOTG_FRAME_NUM ; 
 int /*<<< orphan*/  SOTG_FRINDEX ; 
 int /*<<< orphan*/  SOTG_UNLOCK_DEVICE ; 
 int SOTG_UNLOCK_DEVICE_CODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct saf1761_otg_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct saf1761_otg_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct saf1761_otg_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct saf1761_otg_softc*,int) ; 

void
FUNC11(void *arg)
{
	struct saf1761_otg_softc *sc = arg;
	uint32_t status;

	FUNC3(&sc->sc_bus);
	FUNC4(&sc->sc_bus);

	status = FUNC1(sc, SOTG_DCINTERRUPT) & 
	    SAF1761_DCINTERRUPT_THREAD_IRQ;

	/* acknowledge all device controller interrupts */
	FUNC2(sc, SOTG_DCINTERRUPT, status);

	FUNC0("DCINTERRUPT=0x%08x SOF=0x%08x "
	    "FRINDEX=0x%08x\n", status,
	    FUNC1(sc, SOTG_FRAME_NUM),
	    FUNC1(sc, SOTG_FRINDEX));

	/* update VBUS and ID bits, if any */
	if (status & SOTG_DCINTERRUPT_IEVBUS)
		FUNC9(sc);

	if (status & SOTG_DCINTERRUPT_IEBRST) {
		/* unlock device */
		FUNC2(sc, SOTG_UNLOCK_DEVICE,
		    SOTG_UNLOCK_DEVICE_CODE);

		/* Enable device address */
		FUNC2(sc, SOTG_ADDRESS,
		    SOTG_ADDRESS_ENABLE);

		sc->sc_flags.status_bus_reset = 1;
		sc->sc_flags.status_suspend = 0;
		sc->sc_flags.change_suspend = 0;
		sc->sc_flags.change_connect = 1;

		/* disable resume interrupt */
		FUNC10(sc, 1);
		/* complete root HUB interrupt endpoint */
		FUNC8(sc);
	}
	/*
	 * If "RESUME" and "SUSPEND" is set at the same time we
	 * interpret that like "RESUME". Resume is set when there is
	 * at least 3 milliseconds of inactivity on the USB BUS:
	 */
	if (status & SOTG_DCINTERRUPT_IERESM) {
		/* unlock device */
		FUNC2(sc, SOTG_UNLOCK_DEVICE,
		    SOTG_UNLOCK_DEVICE_CODE);

		if (sc->sc_flags.status_suspend) {
			sc->sc_flags.status_suspend = 0;
			sc->sc_flags.change_suspend = 1;
			/* disable resume interrupt */
			FUNC10(sc, 1);
			/* complete root HUB interrupt endpoint */
			FUNC8(sc);
		}
	} else if (status & SOTG_DCINTERRUPT_IESUSP) {
		if (!sc->sc_flags.status_suspend) {
			sc->sc_flags.status_suspend = 1;
			sc->sc_flags.change_suspend = 1;
			/* enable resume interrupt */
			FUNC10(sc, 0);
			/* complete root HUB interrupt endpoint */
			FUNC8(sc);
		}
	}

	if (sc->sc_xfer_complete != 0) {
		sc->sc_xfer_complete = 0;

		/* complete FIFOs, if any */
		FUNC7(sc);
	}
	FUNC5(&sc->sc_bus);
	FUNC6(&sc->sc_bus);
}