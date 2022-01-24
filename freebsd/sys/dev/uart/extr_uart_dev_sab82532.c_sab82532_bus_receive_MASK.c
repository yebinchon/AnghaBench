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
struct uart_softc {size_t sc_rxput; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/ * sc_rxbuf; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAB_CMDR ; 
 int /*<<< orphan*/  SAB_CMDR_RMC ; 
 scalar_t__ SAB_RBCL ; 
 scalar_t__ SAB_RFIFO ; 
 int SAB_RSTAT_FE ; 
 int SAB_RSTAT_PE ; 
 scalar_t__ SAB_STAR ; 
 int SAB_STAR_CEC ; 
 int SAB_STAR_RFNE ; 
 int UART_STAT_FRAMERR ; 
 int /*<<< orphan*/  UART_STAT_OVERRUN ; 
 int UART_STAT_PARERR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int i, rbcl, xc;
	uint8_t s;

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);
	if (FUNC1(bas, SAB_STAR) & SAB_STAR_RFNE) {
		rbcl = FUNC1(bas, SAB_RBCL) & 31;
		if (rbcl == 0)
			rbcl = 32;
		for (i = 0; i < rbcl; i += 2) {
			if (FUNC3(sc)) {
				sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
				break;
			}
			xc = FUNC1(bas, SAB_RFIFO);
			s = FUNC1(bas, SAB_RFIFO + 1);
			if (s & SAB_RSTAT_FE)
				xc |= UART_STAT_FRAMERR;
			if (s & SAB_RSTAT_PE)
				xc |= UART_STAT_PARERR;
			FUNC4(sc, xc);
		}
	}

	while (FUNC1(bas, SAB_STAR) & SAB_STAR_CEC)
		;
	FUNC5(bas, SAB_CMDR, SAB_CMDR_RMC);
	FUNC0(bas);
	FUNC6(sc->sc_hwmtx);
	return (0);
}