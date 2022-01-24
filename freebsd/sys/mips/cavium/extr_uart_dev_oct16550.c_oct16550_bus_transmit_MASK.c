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
struct oct16550_softc {int ier; } ;

/* Variables and functions */
 int IER_ETXRDY ; 
 int /*<<< orphan*/  REG_DATA ; 
 int /*<<< orphan*/  REG_IER ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7 (struct uart_softc *sc)
{
	struct oct16550_softc *oct16550 = (struct oct16550_softc*)sc;
	struct uart_bas *bas;
	int i;

	bas = &sc->sc_bas;
	FUNC4(sc->sc_hwmtx);
#ifdef NO_UART_INTERRUPTS
        for (i = 0; i < sc->sc_txdatasz; i++) {
            oct16550_putc(bas, sc->sc_txbuf[i]);
        }
#else

        FUNC2(bas, 100, FUNC0(bas));
	FUNC5(bas, REG_IER, oct16550->ier | IER_ETXRDY);
	FUNC3(bas);

	for (i = 0; i < sc->sc_txdatasz; i++) {
		FUNC5(bas, REG_DATA, sc->sc_txbuf[i]);
		FUNC3(bas);
	}
	sc->sc_txbusy = 1;
#endif
	FUNC6(sc->sc_hwmtx);
	return (0);
}