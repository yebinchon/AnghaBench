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
struct uart_softc {int sc_txdatasz; int sc_txbusy; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/ * sc_txbuf; struct uart_bas sc_bas; } ;
struct msm_uart_softc {int /*<<< orphan*/  ier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_DM_IMR ; 
 int /*<<< orphan*/  UART_DM_TX_READY ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct msm_uart_softc *u = (struct msm_uart_softc *)sc;
	struct uart_bas *bas = &sc->sc_bas;
	int i;

	FUNC3(sc->sc_hwmtx);

	/* Write some data */
	for (i = 0; i < sc->sc_txdatasz; i++) {
		/* Write TX data */
		FUNC1(bas, sc->sc_txbuf[i]);
		FUNC2(bas);
	}

	/* TX FIFO is empty now, enable TX_READY interrupt */
	u->ier |= UART_DM_TX_READY;
	FUNC0(bas, UART_DM_IMR, u->ier);
	FUNC2(bas);

	/*
	 * Inform upper layer that it is transmitting data to hardware,
	 * this will be cleared when TXIDLE interrupt occurs.
	 */
	sc->sc_txbusy = 1;
	FUNC4(sc->sc_hwmtx);

	return (0);
}