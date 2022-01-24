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
typedef  size_t u_int ;
struct TYPE_2__ {scalar_t__* la_ioint_irqs; } ;

/* Variables and functions */
 size_t APIC_IO_INTS ; 
 size_t APIC_NUM_IOINTS ; 
 scalar_t__ IRQ_FREE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  icu_lock ; 
 TYPE_1__* lapics ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t num_io_irqs ; 
 int FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 

__attribute__((used)) static u_int
FUNC5(u_int apic_id, u_int *irqs, u_int count, u_int align)
{
	u_int first, run, vector;

	FUNC0(FUNC3(count), ("bad count"));
	FUNC0(FUNC3(align), ("bad align"));
	FUNC0(align >= count, ("align < count"));
#ifdef INVARIANTS
	for (run = 0; run < count; run++)
		KASSERT(irqs[run] < num_io_irqs, ("Invalid IRQ %u at index %u",
		    irqs[run], run));
#endif

	/*
	 * Search for 'count' free vectors.  As with apic_alloc_vector(),
	 * this just uses a simple first fit algorithm.
	 */
	run = 0;
	first = 0;
	FUNC1(&icu_lock);
	for (vector = 0; vector < APIC_NUM_IOINTS; vector++) {

		/* Vector is in use, end run. */
		if (lapics[apic_id].la_ioint_irqs[vector] != IRQ_FREE) {
			run = 0;
			first = 0;
			continue;
		}

		/* Start a new run if run == 0 and vector is aligned. */
		if (run == 0) {
			if ((vector & (align - 1)) != 0)
				continue;
			first = vector;
		}
		run++;

		/* Keep looping if the run isn't long enough yet. */
		if (run < count)
			continue;

		/* Found a run, assign IRQs and return the first vector. */
		for (vector = 0; vector < count; vector++)
			lapics[apic_id].la_ioint_irqs[first + vector] =
			    irqs[vector];
		FUNC2(&icu_lock);
		return (first + APIC_IO_INTS);
	}
	FUNC2(&icu_lock);
	FUNC4("APIC: Couldn't find APIC vectors for %u IRQs\n", count);
	return (0);
}