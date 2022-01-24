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
typedef  int uint8_t ;
struct uart_bas {int rclk; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int EFR_CTS ; 
 int EFR_RTS ; 
 int EINVAL ; 
 int ENXIO ; 
 int LCR_DLAB ; 
 int LCR_SBREAK ; 
 int /*<<< orphan*/  REG_DLH ; 
 int /*<<< orphan*/  REG_DLL ; 
 int /*<<< orphan*/  REG_EFR ; 
 int /*<<< orphan*/  REG_LCR ; 
#define  UART_IOCTL_BAUD 131 
#define  UART_IOCTL_BREAK 130 
#define  UART_IOCTL_IFLOW 129 
#define  UART_IOCTL_OFLOW 128 
 int delay_changed ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (struct uart_softc *sc, int request, intptr_t data)
{
	struct uart_bas *bas;
	int baudrate, divisor, error;
	uint8_t efr, lcr;

	bas = &sc->sc_bas;
	error = 0;
	FUNC2(sc->sc_hwmtx);
	switch (request) {
	case UART_IOCTL_BREAK:
		lcr = FUNC1(bas, REG_LCR);
		if (data)
			lcr |= LCR_SBREAK;
		else
			lcr &= ~LCR_SBREAK;
		FUNC3(bas, REG_LCR, lcr);
		FUNC0(bas);
		break;
	case UART_IOCTL_IFLOW:
		lcr = FUNC1(bas, REG_LCR);
		FUNC0(bas);
		FUNC3(bas, REG_LCR, 0xbf);
		FUNC0(bas);
		efr = FUNC1(bas, REG_EFR);
		if (data)
			efr |= EFR_RTS;
		else
			efr &= ~EFR_RTS;
		FUNC3(bas, REG_EFR, efr);
		FUNC0(bas);
		FUNC3(bas, REG_LCR, lcr);
		FUNC0(bas);
		break;
	case UART_IOCTL_OFLOW:
		lcr = FUNC1(bas, REG_LCR);
		FUNC0(bas);
		FUNC3(bas, REG_LCR, 0xbf);
		FUNC0(bas);
		efr = FUNC1(bas, REG_EFR);
		if (data)
			efr |= EFR_CTS;
		else
			efr &= ~EFR_CTS;
		FUNC3(bas, REG_EFR, efr);
		FUNC0(bas);
		FUNC3(bas, REG_LCR, lcr);
		FUNC0(bas);
		break;
	case UART_IOCTL_BAUD:
		lcr = FUNC1(bas, REG_LCR);
		FUNC3(bas, REG_LCR, lcr | LCR_DLAB);
		FUNC0(bas);
		divisor = FUNC1(bas, REG_DLL) |
		    (FUNC1(bas, REG_DLH) << 8);
		FUNC0(bas);
		FUNC3(bas, REG_LCR, lcr);
		FUNC0(bas);
		baudrate = (divisor > 0) ? bas->rclk / divisor / 16 : 0;
                delay_changed = 1;
		if (baudrate > 0)
			*(int*)data = baudrate;
		else
			error = ENXIO;
		break;
	default:
		error = EINVAL;
		break;
	}
	FUNC4(sc->sc_hwmtx);
	return (error);
}