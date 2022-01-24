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

/* Variables and functions */
 int /*<<< orphan*/  UART_LSR_REG ; 
 int UART_LSR_THRE ; 
 int /*<<< orphan*/  UART_TX_REG ; 
 int /*<<< orphan*/  FUNC0 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*) ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uart_output ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc)
{
	struct uart_bas *bas = &sc->sc_bas;
	int i;

	if (!uart_output) return (0);

	bas = &sc->sc_bas;
	FUNC3(sc->sc_hwmtx);
	while ((FUNC2(bas, UART_LSR_REG) & UART_LSR_THRE) == 0);
	FUNC0(sc);
	for (i = 0; i < sc->sc_txdatasz; i++) {
		FUNC4(bas, UART_TX_REG, sc->sc_txbuf[i]);
		FUNC1(bas);
	}
	sc->sc_txbusy = 1;
	FUNC5(sc->sc_hwmtx);
	return (0);
}