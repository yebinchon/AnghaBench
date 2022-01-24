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
struct pcpu {size_t pc_cpuid; int pc_bsp; int pc_domain; int /*<<< orphan*/  pc_hwref; } ;
struct cpuref {int cr_cpuid; int cr_domain; int /*<<< orphan*/  cr_hwref; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  DPCPU_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int MAXCPU ; 
 size_t MAXMEMDOM ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct pcpu* __pcpu ; 
 int /*<<< orphan*/  all_cpus ; 
 int /*<<< orphan*/ * cpuset_domain ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pcpu*,size_t,int) ; 
 struct pcpu* pcpup ; 
 int FUNC7 (struct cpuref*) ; 
 int FUNC8 (struct cpuref*) ; 
 int FUNC9 (struct cpuref*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int vm_ndomains ; 

void
FUNC12(void)
{
	struct cpuref bsp, cpu;
	struct pcpu *pc;
	int domain, error;

	error = FUNC8(&bsp);
	FUNC3(error == 0, ("Don't know BSP"));

	error = FUNC7(&cpu);
	while (!error) {
		if (cpu.cr_cpuid >= MAXCPU) {
			FUNC11("SMP: cpu%d: skipped -- ID out of range\n",
			    cpu.cr_cpuid);
			goto next;
		}
		if (FUNC0(cpu.cr_cpuid, &all_cpus)) {
			FUNC11("SMP: cpu%d: skipped - duplicate ID\n",
			    cpu.cr_cpuid);
			goto next;
		}

		if (vm_ndomains > 1)
			domain = cpu.cr_domain;
		else
			domain = 0;

		if (cpu.cr_cpuid != bsp.cr_cpuid) {
			void *dpcpu;

			pc = &__pcpu[cpu.cr_cpuid];
			dpcpu = (void *)FUNC5(FUNC2(domain),
			    DPCPU_SIZE, M_WAITOK | M_ZERO);
			FUNC6(pc, cpu.cr_cpuid, sizeof(*pc));
			FUNC4(dpcpu, cpu.cr_cpuid);
		} else {
			pc = pcpup;
			pc->pc_cpuid = bsp.cr_cpuid;
			pc->pc_bsp = 1;
		}
		pc->pc_domain = domain;
		pc->pc_hwref = cpu.cr_hwref;

		FUNC1(pc->pc_cpuid, &cpuset_domain[pc->pc_domain]);
		FUNC3(pc->pc_domain < MAXMEMDOM, ("bad domain value %d\n",
		    pc->pc_domain));
		FUNC1(pc->pc_cpuid, &all_cpus);
next:
		error = FUNC9(&cpu);
	}

#ifdef SMP
	platform_smp_probe_threads();
#endif
}