#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int rm_start; char* rm_descr; int rm_end; void* rm_type; } ;

/* Variables and functions */
 void* RMAN_ARRAY ; 
 int FUNC0 () ; 
 TYPE_1__ drq_rman ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 TYPE_1__ irq_rman ; 
 TYPE_1__ mem_rman ; 
 int num_io_irqs ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ port_rman ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,int) ; 

void
FUNC5(void)
{
	int irq;

	/*
	 * XXX working notes:
	 *
	 * - IRQ resource creation should be moved to the PIC/APIC driver.
	 * - DRQ resource creation should be moved to the DMAC driver.
	 * - The above should be sorted to probe earlier than any child buses.
	 *
	 * - Leave I/O and memory creation here, as child probes may need them.
	 *   (especially eg. ACPI)
	 */

	/*
	 * IRQ's are on the mainboard on old systems, but on the ISA part
	 * of PCI->ISA bridges.  There would be multiple sets of IRQs on
	 * multi-ISA-bus systems.  PCI interrupts are routed to the ISA
	 * component, so in a way, PCI can be a partial child of an ISA bus(!).
	 * APIC interrupts are global though.
	 */
	irq_rman.rm_start = 0;
	irq_rman.rm_type = RMAN_ARRAY;
	irq_rman.rm_descr = "Interrupt request lines";
	irq_rman.rm_end = num_io_irqs - 1;
	if (FUNC3(&irq_rman))
		FUNC2("nexus_init_resources irq_rman");

	/*
	 * We search for regions of existing IRQs and add those to the IRQ
	 * resource manager.
	 */
	for (irq = 0; irq < num_io_irqs; irq++)
		if (FUNC1(irq) != NULL)
			if (FUNC4(&irq_rman, irq, irq) != 0)
				FUNC2("nexus_init_resources irq_rman add");

	/*
	 * ISA DMA on PCI systems is implemented in the ISA part of each
	 * PCI->ISA bridge and the channels can be duplicated if there are
	 * multiple bridges.  (eg: laptops with docking stations)
	 */
	drq_rman.rm_start = 0;
	drq_rman.rm_end = 7;
	drq_rman.rm_type = RMAN_ARRAY;
	drq_rman.rm_descr = "DMA request lines";
	/* XXX drq 0 not available on some machines */
	if (FUNC3(&drq_rman)
	    || FUNC4(&drq_rman,
				  drq_rman.rm_start, drq_rman.rm_end))
		FUNC2("nexus_init_resources drq_rman");

	/*
	 * However, IO ports and Memory truely are global at this level,
	 * as are APIC interrupts (however many IO APICS there turn out
	 * to be on large systems..)
	 */
	port_rman.rm_start = 0;
	port_rman.rm_end = 0xffff;
	port_rman.rm_type = RMAN_ARRAY;
	port_rman.rm_descr = "I/O ports";
	if (FUNC3(&port_rman)
	    || FUNC4(&port_rman, 0, 0xffff))
		FUNC2("nexus_init_resources port_rman");

	mem_rman.rm_start = 0;
	mem_rman.rm_end = FUNC0();
	mem_rman.rm_type = RMAN_ARRAY;
	mem_rman.rm_descr = "I/O memory addresses";
	if (FUNC3(&mem_rman)
	    || FUNC4(&mem_rman, 0, mem_rman.rm_end))
		FUNC2("nexus_init_resources mem_rman");
}