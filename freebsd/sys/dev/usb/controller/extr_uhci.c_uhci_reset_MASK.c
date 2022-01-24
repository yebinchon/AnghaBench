#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_11__ {int /*<<< orphan*/  bdev; int /*<<< orphan*/  bus_mtx; } ;
struct TYPE_10__ {TYPE_5__ sc_bus; int /*<<< orphan*/  sc_root_intr; } ;
typedef  TYPE_1__ uhci_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  UHCI_CMD ; 
 int UHCI_CMD_GRESET ; 
 int UHCI_CMD_HCRESET ; 
 int /*<<< orphan*/  UHCI_FRNUM ; 
 int /*<<< orphan*/  UHCI_INTR ; 
 int UHCI_RESET_TIMEOUT ; 
 int /*<<< orphan*/  UHCI_SOF ; 
 int /*<<< orphan*/  UHCI_STS ; 
 int UHCI_STS_HCH ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_BUS_RESET_DELAY ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

void
FUNC12(uhci_softc_t *sc)
{
	uint16_t n;

	FUNC4(&sc->sc_bus, MA_OWNED);

	FUNC0("resetting the HC\n");

	/* disable interrupts */

	FUNC8(sc, UHCI_INTR, 0);

	/* global reset */

	FUNC1(sc, UHCI_CMD_GRESET);

	/* wait */

	FUNC11(&sc->sc_bus.bus_mtx,
	    FUNC6(USB_BUS_RESET_DELAY));

	/* terminate all transfers */

	FUNC1(sc, UHCI_CMD_HCRESET);

	/* the reset bit goes low when the controller is done */

	n = UHCI_RESET_TIMEOUT;
	while (n--) {
		/* wait one millisecond */

		FUNC11(&sc->sc_bus.bus_mtx, hz / 1000);

		if (!(FUNC2(sc, UHCI_CMD) & UHCI_CMD_HCRESET)) {
			goto done_1;
		}
	}

	FUNC9(sc->sc_bus.bdev,
	    "controller did not reset\n");

done_1:

	n = 10;
	while (n--) {
		/* wait one millisecond */

		FUNC11(&sc->sc_bus.bus_mtx, hz / 1000);

		/* check if HC is stopped */
		if (FUNC2(sc, UHCI_STS) & UHCI_STS_HCH) {
			goto done_2;
		}
	}

	FUNC9(sc->sc_bus.bdev,
	    "controller did not stop\n");

done_2:

	/* reset frame number */
	FUNC8(sc, UHCI_FRNUM, 0);
	/* set default SOF value */
	FUNC7(sc, UHCI_SOF, 0x40);

	FUNC5(&sc->sc_bus);

	/* stop root interrupt */
	FUNC10(&sc->sc_root_intr);

	FUNC3(&sc->sc_bus);
}