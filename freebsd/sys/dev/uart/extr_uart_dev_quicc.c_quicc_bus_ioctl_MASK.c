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
typedef  int uint32_t ;
struct uart_bas {int rclk; int /*<<< orphan*/  chan; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  UART_IOCTL_BAUD 129 
#define  UART_IOCTL_BREAK 128 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc, int request, intptr_t data)
{
	struct uart_bas *bas;
	uint32_t brg;
	int baudrate, error;

	bas = &sc->sc_bas;
	error = 0;
	FUNC2(sc->sc_hwmtx);
	switch (request) {
	case UART_IOCTL_BREAK:
		break;
	case UART_IOCTL_BAUD:
		brg = FUNC1(bas, FUNC0(bas->chan - 1)) & 0x1fff;
		brg = (brg & 1) ? (brg + 1) << 3 : (brg + 2) >> 1;
		baudrate = bas->rclk / (brg * 16);
		*(int*)data = baudrate;
		break;
	default:
		error = EINVAL;
		break;
	}
	FUNC3(sc->sc_hwmtx);
	return (error);
}