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
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int UART_FLUSH_RECEIVER ; 
 int UART_FLUSH_TRANSMITTER ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*,int) ; 
 int FUNC1 (struct uart_bas*) ; 

__attribute__((used)) static int
FUNC2(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int error;

	bas = &sc->sc_bas;

	error = FUNC1(bas);
	if (error)
		return (error);

	/* Reset FIFOs. */
	FUNC0(bas, UART_FLUSH_RECEIVER|UART_FLUSH_TRANSMITTER);

	/* XXX TODO: actually find out what the FIFO depth is! */
	sc->sc_rxfifosz = 16;
	sc->sc_txfifosz = 16;

	return (0);
}