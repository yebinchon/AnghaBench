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

/* Variables and functions */
 int cpu_high ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(void)
{

	/*
	 * Note that 0x1 <= cpu_high < 4 case should be
	 * compatible with topo_probe_intel_0x4() logic when
	 * CPUID.1:EBX[23:16] > 0 (cpu_cores will be 1)
	 * or it should trigger the fallback otherwise.
	 */
	if (cpu_high >= 0xb)
		FUNC1();
	else if (cpu_high >= 0x1)
		FUNC0();

	FUNC2();
}