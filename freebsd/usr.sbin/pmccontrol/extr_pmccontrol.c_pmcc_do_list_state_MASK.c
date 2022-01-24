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
typedef  int u_long ;
struct pmc_pmcinfo {struct pmc_info* pm_pmcs; } ;
struct pmc_info {char* pm_name; int pm_ownerpid; int /*<<< orphan*/  pm_reloadcount; int /*<<< orphan*/  pm_mode; int /*<<< orphan*/  pm_event; int /*<<< orphan*/  pm_rowdisp; scalar_t__ pm_enabled; int /*<<< orphan*/  pm_class; } ;
struct pmc_cpuinfo {int pm_ncpu; scalar_t__ pm_cputype; int pm_npmc; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ ENXIO ; 
 int /*<<< orphan*/  EX_OSERR ; 
 scalar_t__ PMC_CPU_INTEL_PIV ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _SC_CPUSET_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (struct pmc_pmcinfo*) ; 
 scalar_t__ FUNC5 (struct pmc_cpuinfo const**) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (scalar_t__) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 scalar_t__ FUNC11 (int,struct pmc_pmcinfo**) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 long FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(void)
{
	cpuset_t logical_cpus_mask;
	long cpusetsize;
	size_t setsize;
	int c, cpu, n, npmc, ncpu;
	struct pmc_info *pd;
	struct pmc_pmcinfo *pi;
	const struct pmc_cpuinfo *pc;

	if (FUNC5(&pc) != 0)
		FUNC3(EX_OSERR, "Unable to determine CPU information");

	FUNC12("%d %s CPUs present, with %d PMCs per CPU\n", pc->pm_ncpu, 
	       FUNC7(pc->pm_cputype),
		pc->pm_npmc);

	/* Determine the set of logical CPUs. */
	cpusetsize = FUNC13(_SC_CPUSET_SIZE);
	if (cpusetsize == -1 || (u_long)cpusetsize > sizeof(cpuset_t))
		FUNC3(EX_OSERR, "Cannot determine which CPUs are logical");
	FUNC1(&logical_cpus_mask);
	setsize = (size_t)cpusetsize;
	if (FUNC14("machdep.logical_cpus_mask", &logical_cpus_mask,
	    &setsize, NULL, 0) < 0)
		FUNC1(&logical_cpus_mask);

	ncpu = pc->pm_ncpu;

	for (c = cpu = 0; cpu < ncpu; cpu++) {
#if	defined(__i386__) || defined(__amd64__)
		if (pc->pm_cputype == PMC_CPU_INTEL_PIV &&
		    FUNC0(cpu, &logical_cpus_mask))
			continue; /* skip P4-style 'logical' cpus */
#endif
		if (FUNC11(cpu, &pi) < 0) {
			if (errno == ENXIO)
				continue;
			FUNC3(EX_OSERR, "Unable to get PMC status for CPU %d",
			    cpu);
		}

		FUNC12("#CPU %d:\n", c++);
		npmc = FUNC10(cpu);
		FUNC12("#N  NAME             CLASS  STATE    ROW-DISP\n");

		for (n = 0; n < npmc; n++) {
			pd = &pi->pm_pmcs[n];

			FUNC12(" %-2d %-16s %-6s %-8s %-10s",
			    n,
			    pd->pm_name,
			    FUNC6(pd->pm_class),
			    pd->pm_enabled ? "ENABLED" : "DISABLED",
			    FUNC8(pd->pm_rowdisp));

			if (pd->pm_ownerpid != -1) {
			        FUNC12(" (pid %d)", pd->pm_ownerpid);
				FUNC12(" %-32s",
				    FUNC9(pd->pm_event));
				if (FUNC2(pd->pm_mode))
					FUNC12(" (reload count %jd)",
					    pd->pm_reloadcount);
			}
			FUNC12("\n");
		}
		FUNC4(pi);
	}
	return 0;
}