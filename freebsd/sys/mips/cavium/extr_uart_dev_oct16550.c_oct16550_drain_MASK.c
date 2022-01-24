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
 int EIO ; 
 int LSR_RXRDY ; 
 int LSR_TEMT ; 
 int /*<<< orphan*/  REG_DATA ; 
 int /*<<< orphan*/  REG_LSR ; 
 int UART_DRAIN_RECEIVER ; 
 int UART_DRAIN_TRANSMITTER ; 
 int FUNC1 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int FUNC3 (struct uart_bas*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (struct uart_bas *bas, int what)
{
	int delay, limit;

	delay = FUNC1(bas);

	if (what & UART_DRAIN_TRANSMITTER) {
		/*
		 * Pick an arbitrary high limit to avoid getting stuck in
		 * an infinite loop when the hardware is broken. Make the
		 * limit high enough to handle large FIFOs.
		 */
		limit = 10*10*10*1024;
		while ((FUNC3(bas, REG_LSR) & LSR_TEMT) == 0 && --limit)
			FUNC0(delay);
		if (limit == 0) {
			/* printf("oct16550: transmitter appears stuck... "); */
			return (0);
		}
	}

	if (what & UART_DRAIN_RECEIVER) {
		/*
		 * Pick an arbitrary high limit to avoid getting stuck in
		 * an infinite loop when the hardware is broken. Make the
		 * limit high enough to handle large FIFOs and integrated
		 * UARTs. The HP rx2600 for example has 3 UARTs on the
		 * management board that tend to get a lot of data send
		 * to it when the UART is first activated.
		 */
		limit=10*4096;
		while ((FUNC3(bas, REG_LSR) & LSR_RXRDY) && --limit) {
			(void)FUNC3(bas, REG_DATA);
			FUNC2(bas);
			FUNC0(delay << 2);
		}
		if (limit == 0) {
			/* printf("oct16550: receiver appears broken... "); */
			return (EIO);
		}
	}

	return (0);
}