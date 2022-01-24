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
struct uart_bas {scalar_t__ rclk; } ;
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; struct uart_devinfo* sc_sysdev; struct uart_bas sc_bas; } ;
struct uart_mtk_softc {int ier_mask; } ;
struct uart_devinfo {int baudrate; int databits; int stopbits; int /*<<< orphan*/  parity; } ;

/* Variables and functions */
 int UART_FCR_FIFOEN ; 
 int /*<<< orphan*/  UART_FCR_REG ; 
 int UART_FCR_RXTGR_1 ; 
 int UART_FCR_TXTGR_1 ; 
 int UART_IER_EDSSI ; 
 int UART_IER_ELSI ; 
 int UART_IER_ERBFI ; 
 int /*<<< orphan*/  UART_IER_REG ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*) ; 
 int FUNC4 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc)
{
	struct uart_bas *bas;
	struct uart_devinfo *di;
	struct uart_mtk_softc *usc = (struct uart_mtk_softc *)sc;

	bas = &sc->sc_bas;

	if (!bas->rclk) {
		bas->rclk = FUNC0();
	}

	if (sc->sc_sysdev != NULL) {
		di = sc->sc_sysdev;
		FUNC2(bas, di->baudrate, di->databits, di->stopbits,
		    di->parity);
	} else {
		FUNC2(bas, 57600, 8, 1, 0);
	}

	sc->sc_rxfifosz = 16;
	sc->sc_txfifosz = 16;

	(void)FUNC1(sc);

	/* Enable FIFO */
	FUNC5(bas, UART_FCR_REG,
	    FUNC4(bas, UART_FCR_REG) |
	    UART_FCR_FIFOEN | UART_FCR_TXTGR_1 | UART_FCR_RXTGR_1);
	FUNC3(bas);
	/* Enable interrupts */
	usc->ier_mask = 0xf0;
	FUNC5(bas, UART_IER_REG,
	    UART_IER_EDSSI | UART_IER_ELSI | UART_IER_ERBFI);
	FUNC3(bas);

	return (0);
}