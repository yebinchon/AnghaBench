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
struct uart_softc {int* sc_rxbuf; size_t sc_rxput; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATEN ; 
 int /*<<< orphan*/  BRK ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FRMERR ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OVRRUN ; 
 int /*<<< orphan*/  PRERR ; 
 int /*<<< orphan*/  RDR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RRDYEN ; 
 int UART_STAT_BREAK ; 
 int UART_STAT_FRAMERR ; 
 int UART_STAT_OVERRUN ; 
 int UART_STAT_PARERR ; 
 int /*<<< orphan*/  UCR1 ; 
 int /*<<< orphan*/  UCR2 ; 
 int /*<<< orphan*/  URXD ; 
 int /*<<< orphan*/  USR2 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int xc, out;

	bas = &sc->sc_bas;
	FUNC5(sc->sc_hwmtx);

	/*
	 * Empty the rx fifo.  We get the RRDY interrupt when IMX_RXFIFO_LEVEL
	 * (the rx high-water level) is reached, but we set sc_rxfifosz to the
	 * full hardware fifo size, so we can safely process however much is
	 * there, not just the highwater size.
	 */
	while (FUNC3(bas, USR2, RDR)) {
		if (FUNC6(sc)) {
			/* No space left in input buffer */
			sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
			break;
		}
		xc = FUNC2(bas, FUNC4(URXD));
		out = xc & 0x000000ff;
		if (xc & FUNC1(URXD, FRMERR))
			out |= UART_STAT_FRAMERR;
		if (xc & FUNC1(URXD, PRERR))
			out |= UART_STAT_PARERR;
		if (xc & FUNC1(URXD, OVRRUN))
			out |= UART_STAT_OVERRUN;
		if (xc & FUNC1(URXD, BRK))
			out |= UART_STAT_BREAK;

		FUNC7(sc, out);
	}
	FUNC0(bas, UCR1, RRDYEN);
	FUNC0(bas, UCR2, ATEN);

	FUNC8(sc->sc_hwmtx);
	return (0);
}