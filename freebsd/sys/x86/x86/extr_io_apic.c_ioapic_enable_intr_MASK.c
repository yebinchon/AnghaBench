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
struct ioapic_intsrc {scalar_t__ io_vector; int /*<<< orphan*/  io_cpu; int /*<<< orphan*/  io_irq; } ;
struct intsrc {int /*<<< orphan*/  is_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct intsrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct intsrc *isrc)
{
	struct ioapic_intsrc *intpin = (struct ioapic_intsrc *)isrc;

	if (intpin->io_vector == 0)
		if (FUNC2(isrc, FUNC1(isrc->is_domain)) != 0)
			FUNC3("Couldn't find an APIC vector for IRQ %d",
			    intpin->io_irq);
	FUNC0(intpin->io_cpu, intpin->io_vector);
}