#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct pcpu {TYPE_1__* pc_idlethread; } ;
typedef  int /*<<< orphan*/  cpuset_t ;
struct TYPE_2__ {scalar_t__ td_generation; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int EWOULDBLOCK ; 
 int MAXCPU ; 
 int /*<<< orphan*/  curthread ; 
 int mp_maxid ; 
 struct pcpu* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int (*) (int /*<<< orphan*/ ,char const*,int),int,char const*,int) ; 

int
FUNC8(cpuset_t map, const char *wmesg, int prio)
{
	struct pcpu *pcpu;
	u_int gen[MAXCPU];
	int error;
	int cpu;

	error = 0;
	for (cpu = 0; cpu <= mp_maxid; cpu++) {
		if (!FUNC1(cpu, &map) || FUNC0(cpu))
			continue;
		pcpu = FUNC2(cpu);
		gen[cpu] = pcpu->pc_idlethread->td_generation;
	}
	for (cpu = 0; cpu <= mp_maxid; cpu++) {
		if (!FUNC1(cpu, &map) || FUNC0(cpu))
			continue;
		pcpu = FUNC2(cpu);
		FUNC5(curthread);
		FUNC3(curthread, cpu);
		FUNC6(curthread);
		while (gen[cpu] == pcpu->pc_idlethread->td_generation) {
			error = FUNC7(quiesce_cpus, prio, wmesg, 1);
			if (error != EWOULDBLOCK)
				goto out;
			error = 0;
		}
	}
out:
	FUNC5(curthread);
	FUNC4(curthread);
	FUNC6(curthread);

	return (error);
}