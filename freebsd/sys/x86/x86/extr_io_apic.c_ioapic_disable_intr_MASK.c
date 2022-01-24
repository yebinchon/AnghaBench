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
struct ioapic_intsrc {scalar_t__ io_vector; int io_masked; int /*<<< orphan*/  io_irq; int /*<<< orphan*/  io_cpu; } ;
struct intsrc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  icu_lock ; 
 int /*<<< orphan*/  FUNC2 (struct ioapic_intsrc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct intsrc *isrc)
{
	struct ioapic_intsrc *intpin = (struct ioapic_intsrc *)isrc;
	u_int vector;

	if (intpin->io_vector != 0) {
		/* Mask this interrupt pin and free its APIC vector. */
		vector = intpin->io_vector;
		FUNC0(intpin->io_cpu, vector);
		FUNC3(&icu_lock);
		intpin->io_masked = 1;
		intpin->io_vector = 0;
		FUNC2(intpin);
		FUNC4(&icu_lock);
		FUNC1(intpin->io_cpu, vector, intpin->io_irq);
	}
}