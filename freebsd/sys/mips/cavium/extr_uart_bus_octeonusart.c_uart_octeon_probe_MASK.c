#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  regshft; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
struct uart_softc {TYPE_1__ sc_bas; int /*<<< orphan*/ * sc_class; TYPE_2__* sc_sysdev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct uart_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uart_bus_space_mem ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uart_oct16550_class ; 
 int /*<<< orphan*/  uart_sysdevs ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct uart_softc *sc;
	int unit;

	unit = FUNC5(dev);
	sc = FUNC4(dev);
	sc->sc_class = &uart_oct16550_class;

	/*
	 * We inherit the settings from the systme console.  Note, the bst
	 * bad bus_space_map are bogus here, but obio doesn't yet support
	 * them, it seems.
	 */
	sc->sc_sysdev = FUNC1(&uart_sysdevs);
	FUNC2(&sc->sc_sysdev->bas, &sc->sc_bas, sizeof(sc->sc_bas));
	sc->sc_bas.bst = uart_bus_space_mem;
	/*
	 * XXX
	 * RBR isn't really a great base address.
	 */
	if (FUNC3(sc->sc_bas.bst, FUNC0(0),
	    FUNC7(sc->sc_class), 0, &sc->sc_bas.bsh) != 0)
		return (ENXIO);
	return (FUNC6(dev, sc->sc_bas.regshft, 0, 0, 0, unit, 0));
}