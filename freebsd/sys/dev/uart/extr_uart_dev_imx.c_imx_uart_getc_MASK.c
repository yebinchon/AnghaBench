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
 int /*<<< orphan*/  BRK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  URXD ; 
 int /*<<< orphan*/  USR2 ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtx*) ; 

__attribute__((used)) static int
FUNC7(struct uart_bas *bas, struct mtx *hwmtx)
{
	int c;

	FUNC5(hwmtx);
	while (!(FUNC2(bas, USR2, RDR)))
		;

	c = FUNC1(bas, FUNC3(URXD));
	FUNC6(hwmtx);
#if defined(KDB)
	if (c & FLD(URXD, BRK)) {
		if (kdb_break())
			return (0);
	}
#endif
	return (c & 0xff);
}