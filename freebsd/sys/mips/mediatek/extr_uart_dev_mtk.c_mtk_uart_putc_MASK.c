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

/* Variables and functions */
 int /*<<< orphan*/  UART_LSR_REG ; 
 int UART_LSR_THRE ; 
 int /*<<< orphan*/  UART_TX_REG ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uart_output ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct uart_bas *bas, int c)
{
	char chr;
	if (!uart_output) return;
	chr = c;
	while (!(FUNC1(bas, UART_LSR_REG) & UART_LSR_THRE));
	FUNC2(bas, UART_TX_REG, c);
	FUNC0(bas);
	while (!(FUNC1(bas, UART_LSR_REG) & UART_LSR_THRE));
}