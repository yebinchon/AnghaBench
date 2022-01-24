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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int change_connect; scalar_t__ change_suspend; scalar_t__ status_suspend; scalar_t__ status_bus_reset; scalar_t__ status_vbus; scalar_t__ port_powered; } ;
struct uss820dci_softc {int /*<<< orphan*/  sc_bus; TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uss820dci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USS820_SCR ; 
 int /*<<< orphan*/  USS820_SCR_T_IRQ ; 
 int /*<<< orphan*/  FUNC3 (struct uss820dci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uss820dci_softc*) ; 

void
FUNC5(struct uss820dci_softc *sc)
{
	uint8_t temp;

	FUNC0(&sc->sc_bus);

	/* disable all interrupts */
	temp = FUNC2(sc, USS820_SCR);
	temp &= ~USS820_SCR_T_IRQ;
	FUNC3(sc, USS820_SCR, temp);

	sc->sc_flags.port_powered = 0;
	sc->sc_flags.status_vbus = 0;
	sc->sc_flags.status_bus_reset = 0;
	sc->sc_flags.status_suspend = 0;
	sc->sc_flags.change_suspend = 0;
	sc->sc_flags.change_connect = 1;

	FUNC4(sc);
	FUNC1(&sc->sc_bus);
}