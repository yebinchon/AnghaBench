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
 int BES_RXA ; 
 int /*<<< orphan*/  CR_RSTERR ; 
 int /*<<< orphan*/  REG_CTRL ; 
 int /*<<< orphan*/  REG_DATA ; 
 int /*<<< orphan*/  RR_BES ; 
 int /*<<< orphan*/  RR_SRC ; 
 int SRC_FE ; 
 int SRC_OVR ; 
 int SRC_PE ; 
 int UART_STAT_FRAMERR ; 
 int UART_STAT_OVERRUN ; 
 int UART_STAT_PARERR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int xc;
	uint8_t bes, src;

	bas = &sc->sc_bas;
	FUNC3(sc->sc_hwmtx);
	bes = FUNC1(bas, RR_BES);
	while (bes & BES_RXA) {
		if (FUNC4(sc)) {
			sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
			break;
		}
		xc = FUNC2(bas, REG_DATA);
		FUNC0(bas);
		src = FUNC1(bas, RR_SRC);
		if (src & SRC_FE)
			xc |= UART_STAT_FRAMERR;
		if (src & SRC_PE)
			xc |= UART_STAT_PARERR;
		if (src & SRC_OVR)
			xc |= UART_STAT_OVERRUN;
		FUNC5(sc, xc);
		if (src & (SRC_FE | SRC_PE | SRC_OVR)) {
			FUNC6(bas, REG_CTRL, CR_RSTERR);
			FUNC0(bas);
		}
		bes = FUNC1(bas, RR_BES);
	}
	/* Discard everything left in the Rx FIFO. */
	while (bes & BES_RXA) {
		(void)FUNC2(bas, REG_DATA);
		FUNC0(bas);
		src = FUNC1(bas, RR_SRC);
		if (src & (SRC_FE | SRC_PE | SRC_OVR)) {
			FUNC6(bas, REG_CTRL, CR_RSTERR);
			FUNC0(bas);
		}
		bes = FUNC1(bas, RR_BES);
	}
	FUNC7(sc->sc_hwmtx);
	return (0);
}