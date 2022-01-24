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
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  LAPIC_DCR_TIMER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lapic_timer_divisors ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(u_int divisor)
{

	FUNC0(FUNC4(divisor), ("lapic: invalid divisor %u", divisor));
	FUNC0(FUNC1(divisor) <= FUNC3(lapic_timer_divisors),
		("lapic: invalid divisor %u", divisor));
	FUNC2(LAPIC_DCR_TIMER, lapic_timer_divisors[FUNC1(divisor) - 1]);
}