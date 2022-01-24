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
 int /*<<< orphan*/  AR933X_UART_CS_REG ; 
 int AR933X_UART_CS_TX_BUSY ; 
 int /*<<< orphan*/  AR933X_UART_DATA_REG ; 
 int AR933X_UART_DATA_RX_CSR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int UART_DRAIN_RECEIVER ; 
 int UART_DRAIN_TRANSMITTER ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*) ; 

__attribute__((used)) static int
FUNC4(struct uart_bas *bas, int what)
{
	int limit;

	if (what & UART_DRAIN_TRANSMITTER) {
		limit = 10*1024;

		/* Loop over until the TX FIFO shows entirely clear */
		while (--limit) {
			if ((FUNC1(bas, AR933X_UART_CS_REG)
			    & AR933X_UART_CS_TX_BUSY) == 0)
				break;
		}
		if (limit == 0) {
			return (EIO);
		}
	}

	if (what & UART_DRAIN_RECEIVER) {
		limit=10*4096;
		while (--limit) {

			/* XXX duplicated from ar933x_getc() */
			/* XXX TODO: refactor! */

			/* If there's nothing to read, stop! */
			if ((FUNC1(bas, AR933X_UART_DATA_REG) &
			    AR933X_UART_DATA_RX_CSR) == 0) {
				break;
			}

			/* Read the top of the RX FIFO */
			(void) FUNC1(bas, AR933X_UART_DATA_REG);

			/* Remove that entry from said RX FIFO */
			FUNC2(bas, AR933X_UART_DATA_REG,
			    AR933X_UART_DATA_RX_CSR);

			FUNC3(bas);
			FUNC0(2);
		}
		if (limit == 0) {
			return (EIO);
		}
	}
	return (0);
}