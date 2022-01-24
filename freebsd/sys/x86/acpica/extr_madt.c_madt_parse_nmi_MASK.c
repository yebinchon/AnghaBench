#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_3__ {int GlobalIrq; int IntiFlags; } ;
typedef  TYPE_1__ ACPI_MADT_NMI_SOURCE ;

/* Variables and functions */
 int ACPI_MADT_POLARITY_CONFORMS ; 
 int ACPI_MADT_TRIGGER_CONFORMS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void
FUNC7(ACPI_MADT_NMI_SOURCE *nmi)
{
	void *ioapic;
	u_int pin;

	if (FUNC5(nmi->GlobalIrq, &ioapic, &pin) != 0) {
		FUNC6("MADT: Could not find APIC for vector %u\n",
		    nmi->GlobalIrq);
		return;
	}

	FUNC2(ioapic, pin);
	if (!(nmi->IntiFlags & ACPI_MADT_TRIGGER_CONFORMS))
		FUNC4(ioapic, pin,
		    FUNC1(nmi->IntiFlags, 0));
	if (!(nmi->IntiFlags & ACPI_MADT_POLARITY_CONFORMS))
		FUNC3(ioapic, pin,
		    FUNC0(nmi->IntiFlags, 0));
}