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
struct TYPE_2__ {int change_connect; scalar_t__ change_suspend; scalar_t__ status_suspend; scalar_t__ status_bus_reset; scalar_t__ status_vbus; scalar_t__ port_powered; } ;
struct saf1761_otg_softc {int /*<<< orphan*/  sc_bus; TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct saf1761_otg_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOTG_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct saf1761_otg_softc*) ; 

void
FUNC4(struct saf1761_otg_softc *sc)
{
	FUNC1(&sc->sc_bus);

	/* disable all interrupts */
	FUNC0(sc, SOTG_MODE, 0);

	sc->sc_flags.port_powered = 0;
	sc->sc_flags.status_vbus = 0;
	sc->sc_flags.status_bus_reset = 0;
	sc->sc_flags.status_suspend = 0;
	sc->sc_flags.change_suspend = 0;
	sc->sc_flags.change_connect = 1;

	FUNC3(sc);
	FUNC2(&sc->sc_bus);
}