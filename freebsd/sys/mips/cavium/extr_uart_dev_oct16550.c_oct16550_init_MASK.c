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
struct uart_bas {int dummy; } ;

/* Variables and functions */
 int MCR_DTR ; 
 int MCR_RTS ; 
 int /*<<< orphan*/  REG_IER ; 
 int /*<<< orphan*/  REG_MCR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int FUNC3 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5 (struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
	u_char	ier;

	FUNC1(bas, baudrate, databits, stopbits, parity);

	/* Disable all interrupt sources. */
	ier = FUNC3(bas, REG_IER) & 0x0;
	FUNC4(bas, REG_IER, ier);
	FUNC2(bas);

	/* Disable the FIFO (if present). */
//	uart_setreg(bas, REG_FCR, 0);
	FUNC2(bas);

	/* Set RTS & DTR. */
	FUNC4(bas, REG_MCR, MCR_RTS | MCR_DTR);
	FUNC2(bas);

	FUNC0(bas);
}