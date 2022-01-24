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
struct uart_bas {int rclk; } ;

/* Variables and functions */
 int CR_RXE ; 
 int CR_TXE ; 
 int CR_UARTEN ; 
 int FBRD_BDIVFRAC ; 
 int FIFO_IFLS_BITS ; 
 int IBRD_BDIVINT ; 
 int LCR_H_FEN ; 
 int LCR_H_PEN ; 
 int LCR_H_STP2 ; 
 int LCR_H_WLEN6 ; 
 int LCR_H_WLEN7 ; 
 int LCR_H_WLEN8 ; 
 int /*<<< orphan*/  UART_CR ; 
 int /*<<< orphan*/  UART_FBRD ; 
 int /*<<< orphan*/  UART_IBRD ; 
 int /*<<< orphan*/  UART_IFLS ; 
 int /*<<< orphan*/  UART_LCR_H ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
	uint32_t ctrl, line;
	uint32_t baud;

	/*
	 * Zero all settings to make sure
	 * UART is disabled and not configured
	 */
	ctrl = line = 0x0;
	FUNC1(bas, UART_CR, ctrl);

	/* As we know UART is disabled we may setup the line */
	switch (databits) {
	case 7:
		line |= LCR_H_WLEN7;
		break;
	case 6:
		line |= LCR_H_WLEN6;
		break;
	case 8:
	default:
		line |= LCR_H_WLEN8;
		break;
	}

	if (stopbits == 2)
		line |= LCR_H_STP2;
	else
		line &= ~LCR_H_STP2;

	if (parity)
		line |= LCR_H_PEN;
	else
		line &= ~LCR_H_PEN;
	line |= LCR_H_FEN;

	/* Configure the rest */
	ctrl |= (CR_RXE | CR_TXE | CR_UARTEN);

	if (bas->rclk != 0 && baudrate != 0) {
		baud = bas->rclk * 4 / baudrate;
		FUNC1(bas, UART_IBRD, ((uint32_t)(baud >> 6)) & IBRD_BDIVINT);
		FUNC1(bas, UART_FBRD, (uint32_t)(baud & 0x3F) & FBRD_BDIVFRAC);
	}

	/* Add config. to line before reenabling UART */
	FUNC1(bas, UART_LCR_H, (FUNC0(bas, UART_LCR_H) &
	    ~0xff) | line);

	/* Set rx and tx fifo levels. */
	FUNC1(bas, UART_IFLS, FIFO_IFLS_BITS);

	FUNC1(bas, UART_CR, ctrl);
}