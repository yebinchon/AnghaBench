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
struct musbotg_softc {int /*<<< orphan*/  sc_bus; TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB2_REG_INTRXE ; 
 int /*<<< orphan*/  MUSB2_REG_INTTXE ; 
 int /*<<< orphan*/  MUSB2_REG_INTUSBE ; 
 int /*<<< orphan*/  FUNC0 (struct musbotg_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct musbotg_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct musbotg_softc*) ; 

void
FUNC6(struct musbotg_softc *sc)
{
	FUNC2(&sc->sc_bus);

	/* disable all interrupts */
	FUNC0(sc, MUSB2_REG_INTUSBE, 0);
	FUNC1(sc, MUSB2_REG_INTTXE, 0);
	FUNC1(sc, MUSB2_REG_INTRXE, 0);

	sc->sc_flags.port_powered = 0;
	sc->sc_flags.status_vbus = 0;
	sc->sc_flags.status_bus_reset = 0;
	sc->sc_flags.status_suspend = 0;
	sc->sc_flags.change_suspend = 0;
	sc->sc_flags.change_connect = 1;

	FUNC5(sc);
	FUNC4(sc);
	FUNC3(&sc->sc_bus);
}