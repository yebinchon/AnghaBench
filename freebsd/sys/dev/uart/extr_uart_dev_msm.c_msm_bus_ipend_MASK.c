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
struct uart_softc {scalar_t__ sc_txbusy; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;
struct msm_uart_softc {int ier; } ;

/* Variables and functions */
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int SER_INT_RXREADY ; 
 int SER_INT_TXIDLE ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int UART_DM_CLEAR_TX_READY ; 
 int /*<<< orphan*/  UART_DM_CR ; 
 int /*<<< orphan*/  UART_DM_IMR ; 
 int /*<<< orphan*/  UART_DM_MISR ; 
 int UART_DM_RESET_STALE_INT ; 
 int UART_DM_RXLEV ; 
 int UART_DM_RXSTALE ; 
 int UART_DM_STALE_EVENT_DISABLE ; 
 int UART_DM_TXLEV ; 
 int UART_DM_TX_READY ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct msm_uart_softc *u = (struct msm_uart_softc *)sc;
	struct uart_bas *bas = &sc->sc_bas;
	uint32_t isr;
	int ipend;

	FUNC3(sc->sc_hwmtx);

	/* Get ISR status */
	isr = FUNC0(bas, UART_DM_MISR);

	ipend = 0;

	/* Uart RX starting, notify upper layer */
	if (isr & UART_DM_RXLEV) {
		u->ier &= ~UART_DM_RXLEV;
		FUNC1(bas, UART_DM_IMR, u->ier);
		FUNC2(bas);
		ipend |= SER_INT_RXREADY;
	}

	/* Stale RX interrupt */
	if (isr & UART_DM_RXSTALE) {
		/* Disable and reset it */
		FUNC1(bas, UART_DM_CR, UART_DM_STALE_EVENT_DISABLE);
		FUNC1(bas, UART_DM_CR, UART_DM_RESET_STALE_INT);
		FUNC2(bas);
		ipend |= SER_INT_RXREADY;
	}

	/* TX READY interrupt */
	if (isr & UART_DM_TX_READY) {
		/* Clear  TX Ready */
		FUNC1(bas, UART_DM_CR, UART_DM_CLEAR_TX_READY);

		/* Disable TX_READY */
		u->ier &= ~UART_DM_TX_READY;
		FUNC1(bas, UART_DM_IMR, u->ier);
		FUNC2(bas);

		if (sc->sc_txbusy != 0)
			ipend |= SER_INT_TXIDLE;
	}

	if (isr & UART_DM_TXLEV) {
		/* TX FIFO is empty */
		u->ier &= ~UART_DM_TXLEV;
		FUNC1(bas, UART_DM_IMR, u->ier);
		FUNC2(bas);

		if (sc->sc_txbusy != 0)
			ipend |= SER_INT_TXIDLE;
	}

	FUNC4(sc->sc_hwmtx);
	return (ipend);
}