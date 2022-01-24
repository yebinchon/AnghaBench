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
typedef  int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {size_t sc_rxput; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/ * sc_rxbuf; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int DR_FE ; 
 int DR_PE ; 
 int FR_RXFE ; 
 int /*<<< orphan*/  UART_DR ; 
 int /*<<< orphan*/  UART_FR ; 
 int UART_STAT_FRAMERR ; 
 int /*<<< orphan*/  UART_STAT_OVERRUN ; 
 int UART_STAT_PARERR ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas;
	uint32_t ints, xc;
	int rx;

	bas = &sc->sc_bas;
	FUNC1(sc->sc_hwmtx);

	for (;;) {
		ints = FUNC0(bas, UART_FR);
		if (ints & FR_RXFE)
			break;
		if (FUNC2(sc)) {
			sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
			break;
		}

		xc = FUNC0(bas, UART_DR);
		rx = xc & 0xff;

		if (xc & DR_FE)
			rx |= UART_STAT_FRAMERR;
		if (xc & DR_PE)
			rx |= UART_STAT_PARERR;

		FUNC3(sc, rx);
	}

	FUNC4(sc->sc_hwmtx);

	return (0);
}