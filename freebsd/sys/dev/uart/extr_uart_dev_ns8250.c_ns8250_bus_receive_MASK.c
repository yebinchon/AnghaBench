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
typedef  int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {size_t sc_rxput; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/ * sc_rxbuf; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int LSR_FE ; 
 int LSR_PE ; 
 int LSR_RXRDY ; 
 int /*<<< orphan*/  REG_DATA ; 
 int /*<<< orphan*/  REG_LSR ; 
 int UART_STAT_FRAMERR ; 
 int /*<<< orphan*/  UART_STAT_OVERRUN ; 
 int UART_STAT_PARERR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int xc;
	uint8_t lsr;

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);
	lsr = FUNC1(bas, REG_LSR);
	while (lsr & LSR_RXRDY) {
		if (FUNC3(sc)) {
			sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
			break;
		}
		xc = FUNC1(bas, REG_DATA);
		if (lsr & LSR_FE)
			xc |= UART_STAT_FRAMERR;
		if (lsr & LSR_PE)
			xc |= UART_STAT_PARERR;
		FUNC4(sc, xc);
		lsr = FUNC1(bas, REG_LSR);
	}
	/* Discard everything left in the Rx FIFO. */
	while (lsr & LSR_RXRDY) {
		(void)FUNC1(bas, REG_DATA);
		FUNC0(bas);
		lsr = FUNC1(bas, REG_LSR);
	}
	FUNC5(sc->sc_hwmtx);
 	return (0);
}