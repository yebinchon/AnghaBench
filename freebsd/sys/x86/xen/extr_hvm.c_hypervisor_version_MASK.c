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
 scalar_t__ cpuid_base ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static void
FUNC3(void)
{
	uint32_t regs[4];
	int major, minor;

	FUNC0(cpuid_base + 1, regs);

	major = regs[0] >> 16;
	minor = regs[0] & 0xffff;
	FUNC2("XEN: Hypervisor version %d.%d detected.\n", major, minor);

	FUNC1(major, minor);
}