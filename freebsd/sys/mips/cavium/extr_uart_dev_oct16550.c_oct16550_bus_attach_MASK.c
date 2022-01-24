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
struct uart_softc {int /*<<< orphan*/  sc_hwsig; struct uart_bas sc_bas; int /*<<< orphan*/  sc_dev; } ;
struct oct16550_softc {int mcr; int fcr; int ier; } ;

/* Variables and functions */
 int FCR_ENABLE ; 
 int FCR_RX_HIGH ; 
 int IER_EMSC ; 
 int IER_ERLS ; 
 int IER_ERXRDY ; 
 int MCR_DTR ; 
 int MCR_RTS ; 
 int /*<<< orphan*/  REG_FCR ; 
 int /*<<< orphan*/  REG_IER ; 
 int /*<<< orphan*/  REG_MCR ; 
 int /*<<< orphan*/  SER_DTR ; 
 int /*<<< orphan*/  SER_RTS ; 
 int /*<<< orphan*/  UART_DRAIN_TRANSMITTER ; 
 int UART_FLUSH_RECEIVER ; 
 int UART_FLUSH_TRANSMITTER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*) ; 
 int FUNC6 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8 (struct uart_softc *sc)
{
	struct oct16550_softc *oct16550 = (struct oct16550_softc*)sc;
	struct uart_bas *bas;
        int unit;

        unit = FUNC0(sc->sc_dev);
	bas = &sc->sc_bas;

        FUNC4(bas, UART_DRAIN_TRANSMITTER);
	oct16550->mcr = FUNC6(bas, REG_MCR);
	oct16550->fcr = FCR_ENABLE | FCR_RX_HIGH;
	FUNC7(bas, REG_FCR, oct16550->fcr);
	FUNC5(bas);
	FUNC1(sc, UART_FLUSH_RECEIVER|UART_FLUSH_TRANSMITTER);

	if (oct16550->mcr & MCR_DTR)
		sc->sc_hwsig |= SER_DTR;
	if (oct16550->mcr & MCR_RTS)
		sc->sc_hwsig |= SER_RTS;
	FUNC2(sc);

	FUNC3(bas);
	oct16550->ier = FUNC6(bas, REG_IER) & 0xf0;
	oct16550->ier |= IER_EMSC | IER_ERLS | IER_ERXRDY;
	FUNC7(bas, REG_IER, oct16550->ier);
	FUNC5(bas);

	return (0);
}