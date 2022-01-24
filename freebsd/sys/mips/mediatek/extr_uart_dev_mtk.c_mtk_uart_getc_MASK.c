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
 int UART_LSR_DR ; 
 int /*<<< orphan*/  UART_LSR_REG ; 
 int /*<<< orphan*/  UART_RX_REG ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 

__attribute__((used)) static int
FUNC4(struct uart_bas *bas, struct mtx *hwmtx)
{
	int c;

	FUNC2(hwmtx);

	while (!(FUNC1(bas, UART_LSR_REG) & UART_LSR_DR)) {
		FUNC3(hwmtx);
		FUNC0(10);
		FUNC2(hwmtx);
	}

	c = FUNC1(bas, UART_RX_REG);

	FUNC3(hwmtx);

	return (c);
}