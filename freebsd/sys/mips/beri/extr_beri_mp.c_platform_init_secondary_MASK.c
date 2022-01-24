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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * picmap ; 
 int FUNC5 () ; 

void
FUNC6(int cpuid)
{
	device_t ic;
	int ipi;

	ipi = FUNC5();

	ic = FUNC2(FUNC1("beripic"), cpuid);
	picmap[cpuid] = ic;
	FUNC0(ic, cpuid, ipi);

	/* Unmask the interrupt */
	if (cpuid != 0) {
		FUNC4(FUNC3() | (((1 << ipi) << 8) << 2));
	}
}