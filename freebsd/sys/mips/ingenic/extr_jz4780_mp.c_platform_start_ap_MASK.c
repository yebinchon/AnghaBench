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
 int EINVAL ; 
 int JZ4780_MAXCPU ; 
 int JZ_CORECTL_RPC0 ; 
 int JZ_CORECTL_SWRST0 ; 
 int JZ_REIM_ENTRY_MASK ; 
 int JZ_REIM_MIRQ0M ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  jz4780_mpentry ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int
FUNC8(int cpuid)
{
	uint32_t reg, addr;

	if (cpuid >= JZ4780_MAXCPU)
		return (EINVAL);

	/* Figure out address of mpentry in KSEG1 */
	addr = FUNC2(FUNC1(jz4780_mpentry));
	FUNC0((addr & ~JZ_REIM_ENTRY_MASK) == 0,
	    ("Unaligned mpentry"));

	/* Configure core alternative entry point */
	reg = FUNC5();
	reg &= ~JZ_REIM_ENTRY_MASK;
	reg |= addr & JZ_REIM_ENTRY_MASK;

	/* Allow this core to get IPIs from one being started */
	reg |= JZ_REIM_MIRQ0M;
	FUNC7(reg);

	/* Force core into reset and enable use of alternate entry point */
	reg = FUNC4();
	reg |= (JZ_CORECTL_SWRST0 << cpuid) | (JZ_CORECTL_RPC0 << cpuid);
	FUNC6(reg);

	/* Power the core up */
	FUNC3();

	/* Take the core out of reset */
	reg &= ~(JZ_CORECTL_SWRST0 << cpuid);
	FUNC6(reg);

	return (0);
}