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
struct uart_bas {int rclk; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int CCR_BAUDRATE_DIV ; 
 int CTRL_SND_BRK_SEQ ; 
 int ENOTTY ; 
 int /*<<< orphan*/  UART_CCR ; 
 int /*<<< orphan*/  UART_CTRL ; 
#define  UART_IOCTL_BAUD 129 
#define  UART_IOCTL_BREAK 128 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc, int request, intptr_t data)
{
	struct uart_bas *bas;
	int ctrl, ret = 0;
	int divisor, baudrate;

	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);
	switch (request) {
	case UART_IOCTL_BREAK:
		ctrl = FUNC1(bas, UART_CTRL);
		if (data)
			ctrl |= CTRL_SND_BRK_SEQ;
		else
			ctrl &=~ CTRL_SND_BRK_SEQ;
		FUNC3(bas, UART_CTRL, ctrl);
		FUNC0(bas);
		break;

	case UART_IOCTL_BAUD:
		divisor = FUNC1(bas, UART_CCR) & CCR_BAUDRATE_DIV;
		baudrate = bas->rclk/(divisor * 16);
		*(int *)data = baudrate;
		break;

	default:
		ret = ENOTTY;
		break;
	}
	FUNC4(sc->sc_hwmtx);

	return (ret);
}