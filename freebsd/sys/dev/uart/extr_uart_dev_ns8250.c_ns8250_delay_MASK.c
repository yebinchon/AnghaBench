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
struct uart_bas {int rclk; } ;

/* Variables and functions */
 int LCR_DLAB ; 
 int /*<<< orphan*/  REG_DLH ; 
 int /*<<< orphan*/  REG_DLL ; 
 int /*<<< orphan*/  REG_LCR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct uart_bas *bas)
{
	int divisor;
	u_char lcr;

	lcr = FUNC1(bas, REG_LCR);
	FUNC2(bas, REG_LCR, lcr | LCR_DLAB);
	FUNC0(bas);
	divisor = FUNC1(bas, REG_DLL) | (FUNC1(bas, REG_DLH) << 8);
	FUNC0(bas);
	FUNC2(bas, REG_LCR, lcr);
	FUNC0(bas);

	/* 1/10th the time to transmit 1 character (estimate). */
	if (divisor <= 134)
		return (16000000 * divisor / bas->rclk);
	return (16000 * divisor / (bas->rclk / 1000));
}