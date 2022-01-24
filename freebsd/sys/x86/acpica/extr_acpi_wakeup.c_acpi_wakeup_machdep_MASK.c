#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct acpi_softc {int dummy; } ;
struct TYPE_5__ {TYPE_1__* mr_op; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* reinit ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_softc*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__ mem_range_softc ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  suspcpus ; 
 int /*<<< orphan*/  switchticks ; 
 int /*<<< orphan*/  switchtime ; 
 int /*<<< orphan*/  ticks ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

int
FUNC13(struct acpi_softc *sc, int state, int sleep_result,
    int intr_enabled)
{

	if (sleep_result == -1)
		return (sleep_result);

	if (!intr_enabled) {
		/* Wakeup MD procedures in interrupt disabled context */
		if (sleep_result == 1) {
			FUNC11();
			FUNC8();
			FUNC4();
			FUNC2(switchtime, 0);
			FUNC2(switchticks, ticks);
#ifdef DEV_APIC
			lapic_xapic_mode();
#endif
#ifdef SMP
			if (!CPU_EMPTY(&suspcpus))
				acpi_wakeup_cpus(sc);
#endif
		}

#ifdef SMP
		if (!CPU_EMPTY(&suspcpus))
			resume_cpus(suspcpus);
#endif
		FUNC7();
#ifdef __amd64__
		if (&vmm_resume_p != NULL)
			FUNC12();
#endif
		FUNC5(/*suspend_cancelled*/false);

		FUNC0(0, 0);
	} else {
		/* Wakeup MD procedures in interrupt enabled context */
		if (sleep_result == 1 && mem_range_softc.mr_op != NULL &&
		    mem_range_softc.mr_op->reinit != NULL)
			mem_range_softc.mr_op->reinit(&mem_range_softc);
	}

	return (sleep_result);
}