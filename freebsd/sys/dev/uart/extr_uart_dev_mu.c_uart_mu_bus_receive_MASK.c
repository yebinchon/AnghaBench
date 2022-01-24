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
struct uart_softc {size_t sc_rxput; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/ * sc_rxbuf; struct uart_bas sc_bas; } ;
struct uart_mu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUX_MU_IO_REG ; 
 int /*<<< orphan*/  AUX_MU_LSR_REG ; 
 int LSR_RXREADY ; 
 int /*<<< orphan*/  UART_STAT_OVERRUN ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct uart_mu_softc *psc;
	struct uart_bas *bas;
	uint32_t lsr, xc;
	int rx;
	
	bas = &sc->sc_bas;
	FUNC1(sc->sc_hwmtx);
	psc = (struct uart_mu_softc *)sc;
	
	lsr = FUNC0(bas, AUX_MU_LSR_REG);
	while (lsr & LSR_RXREADY) {
		xc = FUNC0(bas, AUX_MU_IO_REG);
		rx = xc & 0xff;
		if (FUNC2(sc)) {
			sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
			break;
		}
		FUNC3(sc, rx);
		lsr = FUNC0(bas, AUX_MU_LSR_REG);
	}
	FUNC4(sc->sc_hwmtx);

	return (0);
}