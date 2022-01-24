#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uart_bas {int regiowidth; } ;
struct uart_softc {int sc_txfifosz; int sc_rxfifosz; int /*<<< orphan*/  sc_dev; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

int
FUNC1(struct uart_softc *sc)
{
	struct uart_bas *bas;

	bas = &sc->sc_bas;
	bas->regiowidth = 4;

	sc->sc_txfifosz = 64;
	sc->sc_rxfifosz = 64;

	FUNC0(sc->sc_dev, "Qualcomm HSUART");

	return (0);
}