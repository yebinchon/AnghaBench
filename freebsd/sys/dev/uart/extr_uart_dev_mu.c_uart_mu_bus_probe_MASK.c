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
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC1(struct uart_softc *sc)
{

	/* MU always has 8 byte deep fifo */
	sc->sc_rxfifosz = 8;
	sc->sc_txfifosz = 8;
	FUNC0(sc->sc_dev, "BCM2835 Mini-UART");

	return (0);
}