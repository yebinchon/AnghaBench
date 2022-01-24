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
struct z8530_softc {int /*<<< orphan*/  tpc; } ;
struct uart_bas {int rclk; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RR_TCH ; 
 int /*<<< orphan*/  RR_TCL ; 
 int /*<<< orphan*/  TPC_BRK ; 
#define  UART_IOCTL_BAUD 129 
#define  UART_IOCTL_BREAK 128 
 int /*<<< orphan*/  WR_TPC ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc, int request, intptr_t data)
{
	struct z8530_softc *z8530 = (struct z8530_softc*)sc;
	struct uart_bas *bas;
	int baudrate, divisor, error;

	bas = &sc->sc_bas;
	error = 0;
	FUNC2(sc->sc_hwmtx);
	switch (request) {
	case UART_IOCTL_BREAK:
		if (data)
			z8530->tpc |= TPC_BRK;
		else
			z8530->tpc &= ~TPC_BRK;
		FUNC3(bas, WR_TPC, z8530->tpc);
		FUNC0(bas);
		break;
	case UART_IOCTL_BAUD:
		divisor = FUNC1(bas, RR_TCH);
		divisor = (divisor << 8) | FUNC1(bas, RR_TCL);
		baudrate = bas->rclk / 2 / (divisor + 2);
		*(int*)data = baudrate;
		break;
	default:
		error = EINVAL;
		break;
	}
	FUNC4(sc->sc_hwmtx);
	return (error);
}