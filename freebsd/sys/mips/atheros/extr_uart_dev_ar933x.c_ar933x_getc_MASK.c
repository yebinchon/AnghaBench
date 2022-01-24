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
 int /*<<< orphan*/  AR933X_UART_DATA_REG ; 
 int AR933X_UART_DATA_RX_CSR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*) ; 

__attribute__((used)) static int
FUNC5(struct uart_bas *bas, struct mtx *hwmtx)
{
	int c;

	FUNC3(hwmtx);

	/* Wait for a character to come ready */
	while ((FUNC1(bas, AR933X_UART_DATA_REG) &
	    AR933X_UART_DATA_RX_CSR) == 0) {
		FUNC4(hwmtx);
		FUNC0(4);
		FUNC3(hwmtx);
	}

	/* Read the top of the RX FIFO */
	c = FUNC1(bas, AR933X_UART_DATA_REG) & 0xff;

	/* Remove that entry from said RX FIFO */
	FUNC2(bas, AR933X_UART_DATA_REG, AR933X_UART_DATA_RX_CSR);

	FUNC4(hwmtx);

	return (c);
}