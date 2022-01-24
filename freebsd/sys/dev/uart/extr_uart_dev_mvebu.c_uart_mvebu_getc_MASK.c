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
 int STAT_RX_RDY ; 
 int /*<<< orphan*/  UART_RBR ; 
 int /*<<< orphan*/  UART_STAT ; 
 int FUNC0 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 

__attribute__((used)) static int
FUNC3(struct uart_bas *bas, struct mtx *hwmtx)
{
	int c;

	FUNC1(hwmtx);
	while (!(FUNC0(bas, UART_STAT) & STAT_RX_RDY))
		;

	c = FUNC0(bas, UART_RBR) & 0xff;
	FUNC2(hwmtx);

	return c;
}