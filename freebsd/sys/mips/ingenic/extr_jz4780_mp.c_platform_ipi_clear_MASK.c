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
typedef  int uint32_t ;

/* Variables and functions */
 int JZ_CORESTS_MIRQ0P ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int cpuid ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(void)
{
	int cpuid = FUNC1(cpuid);
	uint32_t action;

	action = (cpuid == 0) ? FUNC2() : FUNC3();
	FUNC0(action == 1, ("CPU %d: unexpected IPIs: %#x", cpuid, action));
	FUNC4(~(JZ_CORESTS_MIRQ0P << cpuid));
}