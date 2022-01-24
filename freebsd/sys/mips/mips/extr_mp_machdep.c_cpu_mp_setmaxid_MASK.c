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
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAXCPU ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ mp_maxid ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void)
{
	cpuset_t cpumask;
	int cpu, last;

	FUNC3(&cpumask);
	mp_ncpus = 0;
	last = 1;
	while ((cpu = FUNC1(&cpumask)) != 0) {
		last = cpu;
		cpu--;
		FUNC0(cpu, &cpumask);
		mp_ncpus++;
	}
	if (mp_ncpus <= 0)
		mp_ncpus = 1;

	mp_maxid = FUNC2(last, MAXCPU) - 1;
}