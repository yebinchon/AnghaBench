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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  all_cpus ; 
 int mp_ncpus ; 

int
FUNC1(void)
{

	/*
	 * Always record BSP in CPU map so that the mbuf init code works
	 * correctly.
	 */
	FUNC0(0, &all_cpus);
	return (mp_ncpus > 1);
}