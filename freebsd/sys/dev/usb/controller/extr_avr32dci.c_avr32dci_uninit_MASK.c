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
struct TYPE_2__ {int change_connect; scalar_t__ change_suspend; scalar_t__ status_suspend; scalar_t__ status_bus_reset; scalar_t__ status_vbus; scalar_t__ port_powered; } ;
struct avr32dci_softc {int /*<<< orphan*/  sc_bus; TYPE_1__ sc_flags; int /*<<< orphan*/  (* sc_clocks_on ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AVR32_EPTCTL_EPT_ENABL ; 
 int /*<<< orphan*/  AVR32_EPTRST ; 
 int AVR32_EP_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct avr32dci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct avr32dci_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct avr32dci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct avr32dci_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct avr32dci_softc *sc)
{
	uint8_t n;

	FUNC2(&sc->sc_bus);

	/* turn on clocks */
	(sc->sc_clocks_on) (&sc->sc_bus);

	/* disable interrupts */
	FUNC5(sc, 0, 0xFFFFFFFF);

	/* reset all endpoints */
	FUNC1(sc, AVR32_EPTRST, (1 << AVR32_EP_MAX) - 1);

	/* disable all endpoints */
	for (n = 0; n != AVR32_EP_MAX; n++) {
		/* disable endpoint */
		FUNC1(sc, FUNC0(n), AVR32_EPTCTL_EPT_ENABL);
	}

	sc->sc_flags.port_powered = 0;
	sc->sc_flags.status_vbus = 0;
	sc->sc_flags.status_bus_reset = 0;
	sc->sc_flags.status_suspend = 0;
	sc->sc_flags.change_suspend = 0;
	sc->sc_flags.change_connect = 1;

	FUNC6(sc);
	FUNC4(sc);

	FUNC3(&sc->sc_bus);
}