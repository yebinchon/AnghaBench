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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 scalar_t__ IA32_SPEC_CTRL_SSBD ; 
 int /*<<< orphan*/  MSR_IA32_SPEC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(bool enable)
{
	uint64_t v;

	v = FUNC0(MSR_IA32_SPEC_CTRL);
	if (enable)
		v |= (uint64_t)IA32_SPEC_CTRL_SSBD;
	else
		v &= ~(uint64_t)IA32_SPEC_CTRL_SSBD;
	FUNC1(MSR_IA32_SPEC_CTRL, v);
}