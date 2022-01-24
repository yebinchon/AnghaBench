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
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UART_DM_CR ; 
 int /*<<< orphan*/  UART_DM_RESET_ERROR_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_DM_SR ; 
 int UART_DM_SR_RXRDY ; 
 int UART_DM_SR_UART_OVERRUN ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtx*) ; 

__attribute__((used)) static int
FUNC6(struct uart_bas *bas, struct mtx *mtx)
{
	int c;

	FUNC3(mtx);

	/* Wait for a character to come ready */
	while ((FUNC2(bas, UART_DM_SR) & UART_DM_SR_RXRDY) !=
	    UART_DM_SR_RXRDY)
		FUNC0(4);

	/* Check for Overrun error. If so reset Error Status */
	if (FUNC2(bas, UART_DM_SR) & UART_DM_SR_UART_OVERRUN)
		FUNC4(bas, UART_DM_CR, UART_DM_RESET_ERROR_STATUS);

	/* Read char */
	c = FUNC2(bas, FUNC1(0));

	FUNC5(mtx);

	return (c);
}