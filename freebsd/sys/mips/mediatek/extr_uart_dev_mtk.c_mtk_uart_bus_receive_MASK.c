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
struct uart_softc {int* sc_rxbuf; size_t sc_rxput; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int UART_LSR_DR ; 
 int UART_LSR_FE ; 
 int UART_LSR_OE ; 
 int UART_LSR_PE ; 
 int /*<<< orphan*/  UART_LSR_REG ; 
 int /*<<< orphan*/  UART_RX_REG ; 
 int UART_STAT_FRAMERR ; 
 int UART_STAT_OVERRUN ; 
 int UART_STAT_PARERR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int xc;
	uint8_t lsr;

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);
	lsr = FUNC1(bas, UART_LSR_REG);
	while ((lsr & UART_LSR_DR)) {
		if (FUNC3(sc)) {
			sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
			break;
		}
		xc = 0;
		xc = FUNC1(bas, UART_RX_REG);
		if (lsr & UART_LSR_FE)
			xc |= UART_STAT_FRAMERR;
		if (lsr & UART_LSR_PE)
			xc |= UART_STAT_PARERR;
		if (lsr & UART_LSR_OE)
			xc |= UART_STAT_OVERRUN;
		FUNC0(bas);
		FUNC4(sc, xc);
		lsr = FUNC1(bas, UART_LSR_REG);
	}

	FUNC5(sc->sc_hwmtx);
	return (0);
}