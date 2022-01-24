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
 int LSR_THRE ; 
 int /*<<< orphan*/  REG_DATA ; 
 int /*<<< orphan*/  REG_LSR ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*) ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct uart_bas *bas, int c)
{
	int limit;

	limit = 250000;
	while ((FUNC2(bas, REG_LSR) & LSR_THRE) == 0 && --limit)
		FUNC0(4);
	FUNC3(bas, REG_DATA, c);
	FUNC1(bas);
}