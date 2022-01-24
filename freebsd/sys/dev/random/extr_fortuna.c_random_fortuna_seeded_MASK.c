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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ block_seeded_status ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 

__attribute__((used)) static bool
FUNC3(void)
{

#ifdef _KERNEL
	if (block_seeded_status)
		return (false);
#endif

	if (FUNC0(FUNC2()))
		return (true);

	/*
	 * Maybe we have enough entropy in the zeroth pool but just haven't
	 * kicked the initial seed step.  Do so now.
	 */
	FUNC1();

	return (FUNC2());
}