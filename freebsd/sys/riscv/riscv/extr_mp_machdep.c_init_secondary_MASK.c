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
typedef  size_t uint64_t ;
typedef  size_t u_int ;
struct pcpu {TYPE_1__* pc_idlethread; int /*<<< orphan*/  pc_curpcb; TYPE_1__* pc_curthread; } ;
struct TYPE_4__ {int /*<<< orphan*/  p_vmspace; } ;
struct TYPE_3__ {int /*<<< orphan*/  td_pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIE_SEIE ; 
 int /*<<< orphan*/  SIE_SSIE ; 
 struct pcpu* __pcpu ; 
 int /*<<< orphan*/  ap_boot_mtx ; 
 int /*<<< orphan*/  aps_ready ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 size_t boot_hart ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  idlethread ; 
 scalar_t__ mp_maxid ; 
 scalar_t__ mp_ncpus ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__ proc0 ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sie ; 
 int /*<<< orphan*/  sip ; 
 scalar_t__ smp_cpus ; 
 int /*<<< orphan*/  smp_started ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void
FUNC14(uint64_t hart)
{
	struct pcpu *pcpup;
	u_int cpuid;

	/* Renumber this cpu */
	cpuid = hart;
	if (cpuid < boot_hart)
		cpuid += mp_maxid + 1;
	cpuid -= boot_hart;

	/* Setup the pcpu pointer */
	pcpup = &__pcpu[cpuid];
	__asm __volatile("mv tp, %0" :: "r"(pcpup));

	/* Workaround: make sure wfi doesn't halt the hart */
	FUNC5(sie, SIE_SSIE);
	FUNC5(sip, SIE_SSIE);

	/* Spin until the BSP releases the APs */
	while (!aps_ready)
		__asm __volatile("wfi");

	/* Initialize curthread */
	FUNC0(FUNC1(idlethread) != NULL, ("no idle thread"));
	pcpup->pc_curthread = pcpup->pc_idlethread;
	pcpup->pc_curpcb = pcpup->pc_idlethread->td_pcb;

	/*
	 * Identify current CPU. This is necessary to setup
	 * affinity registers and to provide support for
	 * runtime chip identification.
	 */
	FUNC6();

	/* Enable software interrupts */
	FUNC11();

#ifndef EARLY_AP_STARTUP
	/* Start per-CPU event timers. */
	FUNC4();
#endif

	/* Enable external (PLIC) interrupts */
	FUNC5(sie, SIE_SEIE);

	/* Activate process 0's pmap. */
	FUNC10(FUNC13(proc0.p_vmspace));

	FUNC7(&ap_boot_mtx);

	FUNC2(&smp_cpus, 1);

	if (smp_cpus == mp_ncpus) {
		/* enable IPI's, tlb shootdown, freezes etc */
		FUNC3(&smp_started, 1);
	}

	FUNC8(&ap_boot_mtx);

	/* Enter the scheduler */
	FUNC12(NULL);

	FUNC9("scheduler returned us to init_secondary");
	/* NOTREACHED */
}