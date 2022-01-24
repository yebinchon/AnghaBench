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
 int DR_RX_FIFO_EMPTY ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_STATUS_ACK ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_DR ; 
 int /*<<< orphan*/  UART_INT_STATUS ; 
 int /*<<< orphan*/  UART_STAT_OVERRUN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc)
{
	struct uart_bas *bas;
	uint32_t reg;

	bas = &sc->sc_bas;

	FUNC2(sc->sc_hwmtx);

	do {
		if (FUNC3(sc)) {
			/* No space left in the input buffer */
			sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
			break;
		}
		reg = FUNC0(bas, UART_DR);
		FUNC1(bas, UART_INT_STATUS, INT_STATUS_ACK);
		FUNC4(sc, reg & 0xff);
	} while ((reg & DR_RX_FIFO_EMPTY) == 0);

	FUNC5(sc->sc_hwmtx);

	return (0);
}