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
struct uart_bas {int dummy; } ;

/* Variables and functions */
 int AR933X_UART_CS_HOST_INT_EN ; 
 int /*<<< orphan*/  AR933X_UART_CS_REG ; 
 int /*<<< orphan*/  AR933X_UART_INT_EN_REG ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*) ; 

__attribute__((used)) static void
FUNC4(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
	uint32_t reg;

	/* Setup default parameters */
	FUNC1(bas, baudrate, databits, stopbits, parity);

	/* XXX Force enable UART in case it was disabled */

	/* Disable all interrupts */
	FUNC2(bas, AR933X_UART_INT_EN_REG, 0x00000000);

	/* Disable the host interrupt */
	reg = FUNC0(bas, AR933X_UART_CS_REG);
	reg &= ~AR933X_UART_CS_HOST_INT_EN;
	FUNC2(bas, AR933X_UART_CS_REG, reg);

	FUNC3(bas);

	/* XXX Set RTS/DTR? */
}