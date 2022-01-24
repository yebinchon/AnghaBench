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
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; scalar_t__ sc_txbusy; struct uart_bas sc_bas; } ;
struct uart_pl011_softc {int imsc; } ;

/* Variables and functions */
 int RIS_BE ; 
 int RIS_OE ; 
 int RIS_RTIM ; 
 int SER_INT_BREAK ; 
 int SER_INT_OVERRUN ; 
 int SER_INT_RXREADY ; 
 int SER_INT_TXIDLE ; 
 int /*<<< orphan*/  UART_IMSC ; 
 int /*<<< orphan*/  UART_MIS ; 
 int UART_RXREADY ; 
 int UART_TXEMPTY ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc)
{
	struct uart_pl011_softc *psc;
	struct uart_bas *bas;
	uint32_t ints;
	int ipend;

	psc = (struct uart_pl011_softc *)sc;
	bas = &sc->sc_bas;

	FUNC2(sc->sc_hwmtx);
	ints = FUNC0(bas, UART_MIS);
	ipend = 0;

	if (ints & (UART_RXREADY | RIS_RTIM))
		ipend |= SER_INT_RXREADY;
	if (ints & RIS_BE)
		ipend |= SER_INT_BREAK;
	if (ints & RIS_OE)
		ipend |= SER_INT_OVERRUN;
	if (ints & UART_TXEMPTY) {
		if (sc->sc_txbusy)
			ipend |= SER_INT_TXIDLE;

		/* Disable TX interrupt */
		FUNC1(bas, UART_IMSC, psc->imsc & ~UART_TXEMPTY);
	}

	FUNC3(sc->sc_hwmtx);

	return (ipend);
}