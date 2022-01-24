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
struct thread {int dummy; } ;
struct TYPE_2__ {scalar_t__* la_ioint_irqs; } ;

/* Variables and functions */
 scalar_t__ APIC_IO_INTS ; 
 scalar_t__ APIC_NUM_IOINTS ; 
 scalar_t__ IDT_DTRACE_RET ; 
 scalar_t__ IDT_SYSCALL ; 
 scalar_t__ IRQ_FREE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  icu_lock ; 
 TYPE_1__* lapics ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ num_io_irqs ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  rebooting ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 

__attribute__((used)) static void
FUNC10(u_int apic_id, u_int vector, u_int irq)
{
	struct thread *td;

	FUNC0(vector >= APIC_IO_INTS && vector != IDT_SYSCALL &&
	    vector <= APIC_IO_INTS + APIC_NUM_IOINTS,
	    ("Vector %u does not map to an IRQ line", vector));
	FUNC0(irq < num_io_irqs, ("Invalid IRQ %u", irq));
	FUNC0(lapics[apic_id].la_ioint_irqs[vector - APIC_IO_INTS] ==
	    irq, ("IRQ mismatch"));
#ifdef KDTRACE_HOOKS
	KASSERT(vector != IDT_DTRACE_RET,
	    ("Attempt to overwrite DTrace entry"));
#endif

	/*
	 * Bind us to the cpu that owned the vector before freeing it so
	 * we don't lose an interrupt delivery race.
	 */
	td = curthread;
	if (!rebooting) {
		FUNC8(td);
		if (FUNC6(td))
			FUNC4("apic_free_vector: Thread already bound.\n");
		FUNC5(td, FUNC1(apic_id));
		FUNC9(td);
	}
	FUNC2(&icu_lock);
	lapics[apic_id].la_ioint_irqs[vector - APIC_IO_INTS] = IRQ_FREE;
	FUNC3(&icu_lock);
	if (!rebooting) {
		FUNC8(td);
		FUNC7(td);
		FUNC9(td);
	}
}