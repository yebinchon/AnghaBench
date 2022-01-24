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
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int CTRL_TX_IDLE_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ONE_FRAME_TIME ; 
 int SER_INT_TXIDLE ; 
 int STAT_TRANS_MASK ; 
 int STAT_TX_FIFO_EMPT ; 
 int STAT_TX_IDLE ; 
 int /*<<< orphan*/  UART_CTRL ; 
 int /*<<< orphan*/  UART_STAT ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int FUNC3 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int ipend, ctrl, ret = 0;

	bas = &sc->sc_bas;
	FUNC4(sc->sc_hwmtx);
	ipend = FUNC3(bas, UART_STAT);
	ctrl = FUNC3(bas, UART_CTRL);

	if (((ipend & STAT_TX_IDLE) == STAT_TX_IDLE) &&
	    (ctrl & CTRL_TX_IDLE_INT) == CTRL_TX_IDLE_INT) {
		/* Disable TX IDLE Interrupt generation */
		FUNC5(bas, UART_CTRL, ctrl & ~CTRL_TX_IDLE_INT);
		FUNC2(bas);

		/* SER_INT_TXIDLE means empty TX FIFO. Wait until it cleans */
		while(!(FUNC3(bas, UART_STAT) & STAT_TX_FIFO_EMPT))
			FUNC0(ONE_FRAME_TIME/2);

		ret |= SER_INT_TXIDLE;
	}

	ret |= FUNC1(ipend & STAT_TRANS_MASK);

	FUNC6(sc->sc_hwmtx);

	return (ret);
}