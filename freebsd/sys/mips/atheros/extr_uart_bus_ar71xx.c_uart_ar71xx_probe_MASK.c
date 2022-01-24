#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int regshft; void* bsh; void* bst; } ;
struct uart_softc {TYPE_2__ sc_bas; TYPE_3__* sc_sysdev; int /*<<< orphan*/ * sc_class; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int regshft; void* bsh; void* bst; } ;
struct TYPE_6__ {TYPE_1__ bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_UART_ADDR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int) ; 
 struct uart_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 void* mips_bus_space_generic ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uart_ns8250_class ; 
 int /*<<< orphan*/  uart_sysdevs ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct uart_softc *sc;
	uint64_t freq;

	freq = FUNC2();

	sc = FUNC4(dev);
	sc->sc_sysdev = FUNC1(&uart_sysdevs);
	sc->sc_class = &uart_ns8250_class;
	FUNC3(&sc->sc_sysdev->bas, &sc->sc_bas, sizeof(sc->sc_bas));
	sc->sc_sysdev->bas.regshft = 2;
	sc->sc_sysdev->bas.bst = mips_bus_space_generic;
	sc->sc_sysdev->bas.bsh = FUNC0(AR71XX_UART_ADDR) + 3;
	sc->sc_bas.regshft = 2;
	sc->sc_bas.bst = mips_bus_space_generic;
	sc->sc_bas.bsh = FUNC0(AR71XX_UART_ADDR) + 3;

	return (FUNC5(dev, 2, 0, freq, 0, 0, 0));
}