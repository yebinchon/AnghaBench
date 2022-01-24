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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int UART_DM_CLEAR_TX_READY ; 
 int /*<<< orphan*/  UART_DM_CR ; 
 int /*<<< orphan*/  UART_DM_ISR ; 
 int /*<<< orphan*/  UART_DM_NO_CHARS_FOR_TX ; 
 int /*<<< orphan*/  UART_DM_SR ; 
 int UART_DM_SR_TXEMT ; 
 int UART_DM_SR_TXRDY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int UART_DM_TX_READY ; 
 int FUNC3 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct uart_bas *bas, int c)
{
	int limit;

	/*
	 * Write to NO_CHARS_FOR_TX register the number of characters
	 * to be transmitted. However, before writing TX_FIFO must
	 * be empty as indicated by TX_READY interrupt in IMR register
	 */

	/*
	 * Check if transmit FIFO is empty.
	 * If not wait for TX_READY interrupt.
	 */
	limit = 1000;
	if (!(FUNC3(bas, UART_DM_SR) & UART_DM_SR_TXEMT)) {
		while ((FUNC3(bas, UART_DM_ISR) & UART_DM_TX_READY) == 0
		    && --limit)
			FUNC0(4);
		FUNC1(bas, UART_DM_CR, UART_DM_CLEAR_TX_READY);
	}
	/* FIFO is ready, write number of characters to be written */
	FUNC4(bas, UART_DM_NO_CHARS_FOR_TX, 1);

	/* Wait till TX FIFO has space */
	while ((FUNC3(bas, UART_DM_SR) & UART_DM_SR_TXRDY) == 0)
		FUNC0(4);

	/* TX FIFO has space. Write char */
	FUNC1(bas, FUNC2(0), (c & 0xff));
}