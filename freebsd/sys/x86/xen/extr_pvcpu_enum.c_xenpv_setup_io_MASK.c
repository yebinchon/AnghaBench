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
 int /*<<< orphan*/  ACPI_INTR_APIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_io_irqs ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static int
FUNC3(void)
{

	if (FUNC2()) {
		/*
		 * NB: we could iterate over the MADT IOAPIC entries in order
		 * to figure out the exact number of IOAPIC interrupts, but
		 * this is legacy code so just keep using the previous
		 * behaviour and assume a maximum of 256 interrupts.
		 */
		num_io_irqs = FUNC1(255, num_io_irqs);

		FUNC0(ACPI_INTR_APIC);
	}
	return (0);
}