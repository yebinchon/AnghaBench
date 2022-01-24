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
struct cpuref {int /*<<< orphan*/  cr_cpuid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ mp_maxid ; 
 int mp_ncpus ; 
 int FUNC1 (struct cpuref*) ; 
 int FUNC2 (struct cpuref*) ; 

void
FUNC3(void)
{
	struct cpuref cpuref;
	int error;

	mp_ncpus = 0;
	mp_maxid = 0;
	error = FUNC1(&cpuref);
	while (!error) {
		mp_ncpus++;
		mp_maxid = FUNC0(cpuref.cr_cpuid, mp_maxid);
		error = FUNC2(&cpuref);
	}
	/* Sanity. */
	if (mp_ncpus == 0)
		mp_ncpus = 1;
}