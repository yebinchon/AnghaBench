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
struct TYPE_2__ {int cpu_bsp; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCODE_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPI_BITMAP_VECTOR ; 
 int /*<<< orphan*/  IPI_INVLCACHE ; 
 int /*<<< orphan*/  IPI_INVLPG ; 
 int /*<<< orphan*/  IPI_INVLRNG ; 
 int /*<<< orphan*/  IPI_INVLTLB ; 
 int /*<<< orphan*/  IPI_RENDEZVOUS ; 
 int /*<<< orphan*/  IPI_STOP ; 
 int /*<<< orphan*/  IPI_SUSPEND ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int MAXCPU ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDT_SYS386IGT ; 
 int /*<<< orphan*/  SEL_KPL ; 
 int /*<<< orphan*/  apic_id ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int boot_cpu_id ; 
 int* cpu_apic_ids ; 
 TYPE_1__* cpu_info ; 
 int /*<<< orphan*/  cpustop ; 
 int /*<<< orphan*/  cpususpend ; 
 int /*<<< orphan*/  invlcache ; 
 int /*<<< orphan*/  invlpg ; 
 int /*<<< orphan*/  invlrng ; 
 int /*<<< orphan*/  invltlb ; 
 int /*<<< orphan*/  ipi_intr_bitmap_handler ; 
 int /*<<< orphan*/  rendezvous ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(void)
{
	int i;

	/* Initialize the logical ID to APIC ID table. */
	for (i = 0; i < MAXCPU; i++) {
		cpu_apic_ids[i] = -1;
	}

	/* Install an inter-CPU IPI for TLB invalidation */
	FUNC6(IPI_INVLTLB, FUNC1(invltlb),
	       SDT_SYS386IGT, SEL_KPL, FUNC0(GCODE_SEL, SEL_KPL));
	FUNC6(IPI_INVLPG, FUNC1(invlpg),
	       SDT_SYS386IGT, SEL_KPL, FUNC0(GCODE_SEL, SEL_KPL));
	FUNC6(IPI_INVLRNG, FUNC1(invlrng),
	       SDT_SYS386IGT, SEL_KPL, FUNC0(GCODE_SEL, SEL_KPL));

	/* Install an inter-CPU IPI for cache invalidation. */
	FUNC6(IPI_INVLCACHE, FUNC1(invlcache),
	       SDT_SYS386IGT, SEL_KPL, FUNC0(GCODE_SEL, SEL_KPL));

	/* Install an inter-CPU IPI for all-CPU rendezvous */
	FUNC6(IPI_RENDEZVOUS, FUNC1(rendezvous),
	       SDT_SYS386IGT, SEL_KPL, FUNC0(GCODE_SEL, SEL_KPL));

	/* Install generic inter-CPU IPI handler */
	FUNC6(IPI_BITMAP_VECTOR, FUNC1(ipi_intr_bitmap_handler),
	       SDT_SYS386IGT, SEL_KPL, FUNC0(GCODE_SEL, SEL_KPL));

	/* Install an inter-CPU IPI for CPU stop/restart */
	FUNC6(IPI_STOP, FUNC1(cpustop),
	       SDT_SYS386IGT, SEL_KPL, FUNC0(GCODE_SEL, SEL_KPL));

	/* Install an inter-CPU IPI for CPU suspend/resume */
	FUNC6(IPI_SUSPEND, FUNC1(cpususpend),
	       SDT_SYS386IGT, SEL_KPL, FUNC0(GCODE_SEL, SEL_KPL));

	/* Set boot_cpu_id if needed. */
	if (boot_cpu_id == -1) {
		boot_cpu_id = FUNC3(apic_id);
		cpu_info[boot_cpu_id].cpu_bsp = 1;
	} else
		FUNC2(boot_cpu_id == FUNC3(apic_id),
		    ("BSP's APIC ID doesn't match boot_cpu_id"));

	/* Probe logical/physical core configuration. */
	FUNC8();

	FUNC4();

	/* Start each Application Processor */
	FUNC7();

	FUNC5();
}