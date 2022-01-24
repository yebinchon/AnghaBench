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
struct uart_softc {int sc_txfifosz; int sc_rxfifosz; scalar_t__ sc_hwoflow; scalar_t__ sc_hwiflow; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct uart_softc *sc)
{
	if (!FUNC2(sc->sc_dev))
		return (ENXIO);

	if (!FUNC1(sc->sc_dev, compat_data)->ocd_data)
		return (ENXIO);

	FUNC0(sc->sc_dev, "Marvell Armada 3700 UART");

	sc->sc_txfifosz = 32;
	sc->sc_rxfifosz = 64;
	sc->sc_hwiflow = 0;
	sc->sc_hwoflow = 0;

	return (0);
}