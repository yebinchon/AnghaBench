#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct TYPE_4__ {int /*<<< orphan*/  (* cpu_resume ) () ;} ;
struct TYPE_3__ {int /*<<< orphan*/  sp_fpususpend; int /*<<< orphan*/  sp_pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ cpu_ops ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  resuming_cpus ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smp_ipi_mtx ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  suspended_cpus ; 
 TYPE_1__** susppcbs ; 
 int /*<<< orphan*/  switchticks ; 
 int /*<<< orphan*/  switchtime ; 
 int /*<<< orphan*/  ticks ; 
 int /*<<< orphan*/  toresume_cpus ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 

void
FUNC22(void)
{
	u_int cpu;

	FUNC13(&smp_ipi_mtx, MA_NOTOWNED);

	cpu = FUNC3(cpuid);
	if (FUNC17(&susppcbs[cpu]->sp_pcb)) {
#ifdef __amd64__
		FUNC6(susppcbs[cpu]->sp_fpususpend);
#else
		npxsuspend(susppcbs[cpu]->sp_fpususpend);
#endif
		/*
		 * suspended_cpus is cleared shortly after each AP is restarted
		 * by a Startup IPI, so that the BSP can proceed to restarting
		 * the next AP.
		 *
		 * resuming_cpus gets cleared when the AP completes
		 * initialization after having been released by the BSP.
		 * resuming_cpus is probably not the best name for the
		 * variable, because it is actually a set of processors that
		 * haven't resumed yet and haven't necessarily started resuming.
		 *
		 * Note that suspended_cpus is meaningful only for ACPI suspend
		 * as it's not really used for Xen suspend since the APs are
		 * automatically restored to the running state and the correct
		 * context.  For the same reason resumectx is never called in
		 * that case.
		 */
		FUNC2(cpu, &suspended_cpus);
		FUNC2(cpu, &resuming_cpus);

		/*
		 * Invalidate the cache after setting the global status bits.
		 * The last AP to set its bit may end up being an Owner of the
		 * corresponding cache line in MOESI protocol.  The AP may be
		 * stopped before the cache line is written to the main memory.
		 */
		FUNC21();
	} else {
#ifdef __amd64__
		FUNC5(susppcbs[cpu]->sp_fpususpend);
#else
		npxresume(susppcbs[cpu]->sp_fpususpend);
#endif
		FUNC16();
		FUNC8();
		FUNC4(switchtime, 0);
		FUNC4(switchticks, ticks);

		/* Indicate that we have restarted and restored the context. */
		FUNC0(cpu, &suspended_cpus);
	}

	/* Wait for resume directive */
	while (!FUNC1(cpu, &toresume_cpus))
		FUNC7();

	/* Re-apply microcode updates. */
	FUNC19();

#ifdef __i386__
	/* Finish removing the identity mapping of low memory for this AP. */
	invltlb_glob();
#endif

	if (cpu_ops.cpu_resume)
		cpu_ops.cpu_resume();
#ifdef __amd64__
	if (&vmm_resume_p)
		FUNC20();
#endif

	/* Resume MCA and local APIC */
	FUNC11();
	FUNC12();
	FUNC10(0);

	/* Indicate that we are resumed */
	FUNC0(cpu, &resuming_cpus);
	FUNC0(cpu, &suspended_cpus);
	FUNC0(cpu, &toresume_cpus);
}