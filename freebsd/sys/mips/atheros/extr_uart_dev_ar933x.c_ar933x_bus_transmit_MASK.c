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
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int sc_txbusy; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;
struct ar933x_softc {int u_ier; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR933X_UART_CS_REG ; 
 int AR933X_UART_CS_TX_BUSY ; 
 int /*<<< orphan*/  AR933X_UART_DATA_REG ; 
 int AR933X_UART_DATA_TX_CSR ; 
 int /*<<< orphan*/  AR933X_UART_INT_EN_REG ; 
 int AR933X_UART_INT_TX_EMPTY ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;
	struct ar933x_softc *u = (struct ar933x_softc *)sc;
	int i;

	FUNC3(sc->sc_hwmtx);

	/* Wait for the FIFO to be clear - see above */
	while (FUNC0(bas, AR933X_UART_CS_REG) &
	    AR933X_UART_CS_TX_BUSY)
		;

	/*
	 * Write some data!
	 */
	for (i = 0; i < sc->sc_txdatasz; i++) {
		/* Write the TX data */
		FUNC1(bas, AR933X_UART_DATA_REG,
		    (sc->sc_txbuf[i] & 0xff) | AR933X_UART_DATA_TX_CSR);
		FUNC2(bas);
	}

	/*
	 * Now that we're transmitting, get interrupt notification
	 * when the FIFO is (almost) empty - see above.
	 */
	u->u_ier |= AR933X_UART_INT_TX_EMPTY;
	FUNC1(bas, AR933X_UART_INT_EN_REG, u->u_ier);
	FUNC2(bas);

	/*
	 * Inform the upper layer that we are presently transmitting
	 * data to the hardware; this will be cleared when the
	 * TXIDLE interrupt occurs.
	 */
	sc->sc_txbusy = 1;
	FUNC4(sc->sc_hwmtx);

	return (0);
}