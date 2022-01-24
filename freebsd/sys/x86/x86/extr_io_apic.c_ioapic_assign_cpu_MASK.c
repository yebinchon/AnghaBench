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
typedef  scalar_t__ u_int ;
struct ioapic_intsrc {scalar_t__ io_vector; scalar_t__ io_irq; scalar_t__ io_cpu; int io_intpin; int io_lowreg; int /*<<< orphan*/  io_edgetrigger; int /*<<< orphan*/  io_masked; } ;
struct ioapic {int io_id; int /*<<< orphan*/  io_addr; } ;
struct intsrc {scalar_t__ is_handlers; scalar_t__ is_pic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IOART_INTMSET ; 
 scalar_t__ IRQ_NMI ; 
 scalar_t__ VM_GUEST_HV ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  icu_lock ; 
 int /*<<< orphan*/  FUNC6 (struct ioapic_intsrc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ioapic_intsrc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 
 scalar_t__ vm_guest ; 

__attribute__((used)) static int
FUNC12(struct intsrc *isrc, u_int apic_id)
{
	struct ioapic_intsrc *intpin = (struct ioapic_intsrc *)isrc;
	struct ioapic *io = (struct ioapic *)isrc->is_pic;
	u_int old_vector, new_vector;
	u_int old_id;

	/*
	 * On Hyper-V:
	 * - Stick to the first cpu for all I/O APIC pins.
	 * - And don't allow destination cpu changes.
	 */
	if (vm_guest == VM_GUEST_HV) {
		if (intpin->io_vector)
			return (EINVAL);
		else
			apic_id = 0;
	}

	/*
	 * keep 1st core as the destination for NMI
	 */
	if (intpin->io_irq == IRQ_NMI)
		apic_id = 0;

	/*
	 * Set us up to free the old irq.
	 */
	old_vector = intpin->io_vector;
	old_id = intpin->io_cpu;
	if (old_vector && apic_id == old_id)
		return (0);

	/*
	 * Allocate an APIC vector for this interrupt pin.  Once
	 * we have a vector we program the interrupt pin.
	 */
	new_vector = FUNC2(apic_id, intpin->io_irq);
	if (new_vector == 0)
		return (ENOSPC);

	/*
	 * Mask the old intpin if it is enabled while it is migrated.
	 *
	 * At least some level-triggered interrupts seem to need the
	 * extra DELAY() to avoid being stuck in a non-EOI'd state.
	 */
	FUNC9(&icu_lock);
	if (!intpin->io_masked && !intpin->io_edgetrigger) {
		FUNC8(io->io_addr, FUNC1(intpin->io_intpin),
		    intpin->io_lowreg | IOART_INTMSET);
		FUNC10(&icu_lock);
		FUNC0(100);
		FUNC9(&icu_lock);
	}

	intpin->io_cpu = apic_id;
	intpin->io_vector = new_vector;
	if (isrc->is_handlers > 0)
		FUNC4(intpin->io_cpu, intpin->io_vector);
	if (bootverbose) {
		FUNC11("ioapic%u: routing intpin %u (", io->io_id,
		    intpin->io_intpin);
		FUNC6(intpin);
		FUNC11(") to lapic %u vector %u\n", intpin->io_cpu,
		    intpin->io_vector);
	}
	FUNC7(intpin);
	FUNC10(&icu_lock);

	/*
	 * Free the old vector after the new one is established.  This is done
	 * to prevent races where we could miss an interrupt.
	 */
	if (old_vector) {
		if (isrc->is_handlers > 0)
			FUNC3(old_id, old_vector);
		FUNC5(old_id, old_vector, intpin->io_irq);
	}
	return (0);
}