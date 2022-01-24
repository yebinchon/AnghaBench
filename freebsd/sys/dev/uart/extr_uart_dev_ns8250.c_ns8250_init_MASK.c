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
typedef  int u_char ;
struct uart_bas {scalar_t__ rclk; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_RCLK ; 
 int FCR_UART_ON ; 
 int MCR_DTR ; 
 int MCR_IE ; 
 int MCR_RTS ; 
 int /*<<< orphan*/  REG_FCR ; 
 int /*<<< orphan*/  REG_IER ; 
 int /*<<< orphan*/  REG_MCR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int FUNC3 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
	u_char ier, val;

	if (bas->rclk == 0)
		bas->rclk = DEFAULT_RCLK;
	FUNC1(bas, baudrate, databits, stopbits, parity);

	/* Disable all interrupt sources. */
	/*
	 * We use 0xe0 instead of 0xf0 as the mask because the XScale PXA
	 * UARTs split the receive time-out interrupt bit out separately as
	 * 0x10.  This gets handled by ier_mask and ier_rxbits below.
	 */
	ier = FUNC3(bas, REG_IER) & 0xe0;
	FUNC4(bas, REG_IER, ier);
	FUNC2(bas);

	/* Disable the FIFO (if present). */
	val = 0;
#ifdef CPU_XBURST
	val |= FCR_UART_ON;
#endif
	FUNC4(bas, REG_FCR, val);
	FUNC2(bas);

	/* Set RTS & DTR. */
	FUNC4(bas, REG_MCR, MCR_IE | MCR_RTS | MCR_DTR);
	FUNC2(bas);

	FUNC0(bas);
}