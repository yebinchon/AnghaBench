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
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*,int) ; 

__attribute__((used)) static uint32_t
FUNC2(void)
{
	uint32_t base, regs[4];

	for (base = 0x40000000; base < 0x40010000; base += 0x100) {
		FUNC0(base, regs);
		if (!FUNC1("XenVMMXenVMM", &regs[1], 12)
		    && (regs[0] - base) >= 2)
			return (base);
	}
	return (0);
}