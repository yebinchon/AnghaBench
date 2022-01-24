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
 int AMDID_RDTSCP ; 
 scalar_t__ FUNC0 (int) ; 
 int amd_feature ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

uint64_t
FUNC4(void)
{
#if defined(__i386__) || defined(__amd64__)
	if (FUNC0(amd_feature & AMDID_RDTSCP))
		return FUNC3();
	else
		return FUNC2();
#else
	return get_cyclecount();
#endif
}