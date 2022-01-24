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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {int status_vbus; int change_connect; scalar_t__ change_suspend; scalar_t__ status_suspend; scalar_t__ status_bus_reset; } ;
struct musbotg_softc {int /*<<< orphan*/  sc_bus; TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct musbotg_softc*) ; 

void
FUNC4(struct musbotg_softc *sc, uint8_t is_on)
{
	FUNC0(4, "vbus = %u\n", is_on);

	FUNC1(&sc->sc_bus);
	if (is_on) {
		if (!sc->sc_flags.status_vbus) {
			sc->sc_flags.status_vbus = 1;

			/* complete root HUB interrupt endpoint */
			FUNC3(sc);
		}
	} else {
		if (sc->sc_flags.status_vbus) {
			sc->sc_flags.status_vbus = 0;
			sc->sc_flags.status_bus_reset = 0;
			sc->sc_flags.status_suspend = 0;
			sc->sc_flags.change_suspend = 0;
			sc->sc_flags.change_connect = 1;

			/* complete root HUB interrupt endpoint */
			FUNC3(sc);
		}
	}

	FUNC2(&sc->sc_bus);
}