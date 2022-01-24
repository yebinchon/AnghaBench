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

/* Variables and functions */
 int CTRL_INTR_MASK ; 
 int CTRL_TX_IDLE_INT ; 
 int /*<<< orphan*/  UART_CTRL ; 
 int /*<<< orphan*/  UART_TSH ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int i, ctrl;

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);

	/* Turn off all interrupts during send */
	ctrl = FUNC1(bas, UART_CTRL);
	FUNC3(bas, UART_CTRL, ctrl & ~CTRL_INTR_MASK);
	FUNC0(bas);

	for (i = 0; i < sc->sc_txdatasz; i++) {
		FUNC3(bas, UART_TSH, sc->sc_txbuf[i] & 0xff);
		FUNC0(bas);
	}

	/*
	 * Make sure that interrupt is generated
	 * when FIFO can get more data.
	 */
	FUNC3(bas, UART_CTRL, ctrl | CTRL_TX_IDLE_INT);
	FUNC0(bas);

	/* Mark busy */
	sc->sc_txbusy = 1;

	FUNC4(sc->sc_hwmtx);
	return (0);
}