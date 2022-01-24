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
typedef  int u_int ;
typedef  scalar_t__ UINT8 ;
typedef  int UINT16 ;

/* Variables and functions */
 int ACPI_MADT_POLARITY_CONFORMS ; 
 int ACPI_MADT_TRIGGER_CONFORMS ; 
 int APIC_ID_ALL ; 
 int /*<<< orphan*/  APIC_LVT_DM_NMI ; 
 int APIC_LVT_LINT0 ; 
 int APIC_LVT_LINT1 ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void
FUNC7(u_int acpi_id, UINT8 Lint, UINT16 IntiFlags)
{
	u_int apic_id, pin;

	if (acpi_id == 0xffffffff)
		apic_id = APIC_ID_ALL;
	else if (FUNC5(acpi_id, &apic_id) != 0) {
		if (bootverbose)
			FUNC6("MADT: Ignoring local NMI routed to "
			    "ACPI CPU %u\n", acpi_id);
		return;
	}
	if (Lint == 0)
		pin = APIC_LVT_LINT0;
	else
		pin = APIC_LVT_LINT1;
	FUNC2(apic_id, pin, APIC_LVT_DM_NMI);
	if (!(IntiFlags & ACPI_MADT_TRIGGER_CONFORMS))
		FUNC4(apic_id, pin,
		    FUNC1(IntiFlags, 0));
	if (!(IntiFlags & ACPI_MADT_POLARITY_CONFORMS))
		FUNC3(apic_id, pin,
		    FUNC0(IntiFlags, 0));
}