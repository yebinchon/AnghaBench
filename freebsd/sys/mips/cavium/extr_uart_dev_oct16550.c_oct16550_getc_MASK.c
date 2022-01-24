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
 int LSR_RXRDY ; 
 int /*<<< orphan*/  REG_DATA ; 
 int /*<<< orphan*/  REG_LSR ; 
 int FUNC1 (struct uart_bas*) ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*) ; 

__attribute__((used)) static int
FUNC5 (struct uart_bas *bas, struct mtx *hwmtx)
{
	int c, delay;

	FUNC3(hwmtx);

	/* 1/10th the time to transmit 1 character (estimate). */
	delay = FUNC1(bas);

	while ((FUNC2(bas, REG_LSR) & LSR_RXRDY) == 0) {
		FUNC4(hwmtx);
		FUNC0(delay);
		FUNC3(hwmtx);
	}

	c = FUNC2(bas, REG_DATA);

	FUNC4(hwmtx);

	return (c);
}