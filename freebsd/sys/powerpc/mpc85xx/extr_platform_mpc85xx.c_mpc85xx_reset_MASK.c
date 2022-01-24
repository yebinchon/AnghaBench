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
typedef  int /*<<< orphan*/  platform_t ;

/* Variables and functions */
 int DBCR0_IDM ; 
 int DBCR0_RST_SYSTEM ; 
 int /*<<< orphan*/  OCP85XX_RSTCR ; 
 int PSL_DE ; 
 int /*<<< orphan*/  SPR_DBCR0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(platform_t plat)
{

	/*
	 * Try the dedicated reset register first.
	 * If the SoC doesn't have one, we'll fall
	 * back to using the debug control register.
	 */
	FUNC0(OCP85XX_RSTCR, 2);

	FUNC2(FUNC1() & ~PSL_DE);

	/* Enable debug interrupts and issue reset. */
	FUNC3(SPR_DBCR0, DBCR0_IDM | DBCR0_RST_SYSTEM);
	__asm __volatile("isync");

	/* Enable Debug Interrupts in MSR. */
	FUNC2(FUNC1() | PSL_DE);

	FUNC4("Reset failed...\n");
	while (1)
		;
}