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
struct z8530_softc {int txidle; } ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txbusy; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/ * sc_txbuf; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int BES_TXE ; 
 int /*<<< orphan*/  REG_DATA ; 
 int /*<<< orphan*/  RR_BES ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct z8530_softc *z8530 = (struct z8530_softc*)sc;
	struct uart_bas *bas;

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);
	while (!(FUNC1(bas, RR_BES) & BES_TXE))
		;
	FUNC3(bas, REG_DATA, sc->sc_txbuf[0]);
	FUNC0(bas);
	sc->sc_txbusy = 1;
	z8530->txidle = 1;	/* Report SER_INT_TXIDLE again. */
	FUNC4(sc->sc_hwmtx);
	return (0);
}