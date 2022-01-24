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
typedef  int u_long ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  clock ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  tick ; 

void
FUNC7(int usec)
{
	u_long end;

	if (usec < 0)
		return;
	FUNC1();

	/*
	 * We avoid being migrated to another CPU with a possibly
	 * unsynchronized TICK timer while spinning.
	 */
	FUNC5();

	end = FUNC4(tick) + (u_long)usec * FUNC0(clock) / 1000000;
	while (FUNC4(tick) < end)
		FUNC3();

	FUNC6();
	FUNC2();
}