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
typedef  int uint64_t ;
typedef  scalar_t__ volatile u_quad_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ volatile FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ps_per_tick ; 

void
FUNC6(int n)
{
	volatile u_quad_t	tb;
	u_quad_t		ttb;

	FUNC0();
	tb = FUNC3();
	ttb = tb + FUNC2((uint64_t)n * 1000000, ps_per_tick);
	FUNC5();
	while (tb < ttb)
		tb = FUNC3();
	FUNC4();
	FUNC1();
}