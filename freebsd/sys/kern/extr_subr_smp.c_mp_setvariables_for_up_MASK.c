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
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_cpus ; 
 int /*<<< orphan*/  cpuid ; 
 scalar_t__ mp_maxid ; 
 int mp_ncores ; 
 int mp_ncpus ; 

__attribute__((used)) static void
FUNC3(void *dummy)
{
	mp_ncpus = 1;
	mp_ncores = 1;
	mp_maxid = FUNC2(cpuid);
	FUNC0(mp_maxid, &all_cpus);
	FUNC1(FUNC2(cpuid) == 0, ("UP must have a CPU ID of zero"));
}