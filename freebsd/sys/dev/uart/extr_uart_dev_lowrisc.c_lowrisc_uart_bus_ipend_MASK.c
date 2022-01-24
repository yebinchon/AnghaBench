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
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int DR_RX_FIFO_EMPTY ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_STATUS_ACK ; 
 int SER_INT_RXREADY ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_DR ; 
 int /*<<< orphan*/  UART_INT_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc)
{
	struct uart_bas *bas;
	int ipend;

	bas = &sc->sc_bas;

	ipend = 0;

	FUNC2(sc->sc_hwmtx);
	if ((FUNC0(bas, UART_DR) & DR_RX_FIFO_EMPTY) == 0)
		ipend |= SER_INT_RXREADY;
	FUNC1(bas, UART_INT_STATUS, INT_STATUS_ACK);
	FUNC3(sc->sc_hwmtx);

	return (ipend);
}