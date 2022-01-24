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
struct TYPE_2__ {scalar_t__* la_ioint_irqs; } ;

/* Variables and functions */
 scalar_t__ APIC_IO_INTS ; 
 scalar_t__ APIC_NUM_IOINTS ; 
 scalar_t__ IRQ_FREE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  icu_lock ; 
 TYPE_1__* lapics ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ num_io_irqs ; 

__attribute__((used)) static u_int
FUNC3(u_int apic_id, u_int irq)
{
	u_int vector;

	FUNC0(irq < num_io_irqs, ("Invalid IRQ %u", irq));

	/*
	 * Search for a free vector.  Currently we just use a very simple
	 * algorithm to find the first free vector.
	 */
	FUNC1(&icu_lock);
	for (vector = 0; vector < APIC_NUM_IOINTS; vector++) {
		if (lapics[apic_id].la_ioint_irqs[vector] != IRQ_FREE)
			continue;
		lapics[apic_id].la_ioint_irqs[vector] = irq;
		FUNC2(&icu_lock);
		return (vector + APIC_IO_INTS);
	}
	FUNC2(&icu_lock);
	return (0);
}