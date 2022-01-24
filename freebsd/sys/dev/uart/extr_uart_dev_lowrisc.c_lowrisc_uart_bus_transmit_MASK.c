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
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int DR_TX_FIFO_FULL ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UART_DR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int i;

	bas = &sc->sc_bas;

	FUNC2(sc->sc_hwmtx);
	for (i = 0; i < sc->sc_txdatasz; i++) {
		while (FUNC0(bas, UART_DR) & DR_TX_FIFO_FULL)
			;
		FUNC1(bas, UART_DR, sc->sc_txbuf[i] & 0xff);
	}
	FUNC3(sc->sc_hwmtx);

	return (0);
}