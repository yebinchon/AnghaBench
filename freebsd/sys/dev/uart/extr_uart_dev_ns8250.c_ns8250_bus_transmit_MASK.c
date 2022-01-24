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
struct ns8250_softc {int ier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IER_ETXRDY ; 
 int LSR_THRE ; 
 int /*<<< orphan*/  REG_DATA ; 
 int /*<<< orphan*/  REG_IER ; 
 int /*<<< orphan*/  REG_LSR ; 
 int /*<<< orphan*/  SER_INT_TXIDLE ; 
 int /*<<< orphan*/  UART_DRAIN_TRANSMITTER ; 
 scalar_t__ broken_txfifo ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int FUNC3 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct uart_softc *sc)
{
	struct ns8250_softc *ns8250 = (struct ns8250_softc*)sc;
	struct uart_bas *bas;
	int i;

	bas = &sc->sc_bas;
	FUNC4(sc->sc_hwmtx);
	while ((FUNC3(bas, REG_LSR) & LSR_THRE) == 0)
		FUNC0(4);
	for (i = 0; i < sc->sc_txdatasz; i++) {
		FUNC6(bas, REG_DATA, sc->sc_txbuf[i]);
		FUNC2(bas);
	}
	FUNC6(bas, REG_IER, ns8250->ier | IER_ETXRDY);
	FUNC2(bas);
	if (broken_txfifo)
		FUNC1(bas, UART_DRAIN_TRANSMITTER);
	else
		sc->sc_txbusy = 1;
	FUNC7(sc->sc_hwmtx);
	if (broken_txfifo)
		FUNC5(sc, SER_INT_TXIDLE);
	return (0);
}