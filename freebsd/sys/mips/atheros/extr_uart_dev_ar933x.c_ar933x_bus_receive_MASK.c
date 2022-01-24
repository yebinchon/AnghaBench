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
struct uart_bas {int dummy; } ;
struct uart_softc {size_t sc_rxput; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/ * sc_rxbuf; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR933X_UART_DATA_REG ; 
 int /*<<< orphan*/  AR933X_UART_DATA_RX_CSR ; 
 int /*<<< orphan*/  UART_STAT_OVERRUN ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;
	int xc;

	FUNC4(sc->sc_hwmtx);

	/* Loop over until we are full, or no data is available */
	while (FUNC1(bas)) {
		if (FUNC5(sc)) {
			sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
			break;
		}

		/* Read the top of the RX FIFO */
		xc = FUNC0(bas, AR933X_UART_DATA_REG) & 0xff;

		/* Remove that entry from said RX FIFO */
		FUNC2(bas, AR933X_UART_DATA_REG,
		    AR933X_UART_DATA_RX_CSR);
		FUNC3(bas);

		/* XXX frame, parity error */
		FUNC6(sc, xc);
	}

	/*
	 * XXX TODO: Discard everything left in the Rx FIFO?
	 * XXX only if we've hit an overrun condition?
	 */

	FUNC7(sc->sc_hwmtx);

	return (0);
}