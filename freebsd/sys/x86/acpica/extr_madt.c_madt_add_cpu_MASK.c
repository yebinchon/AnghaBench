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
struct lapic_info {int la_enabled; int la_acpi_id; } ;

/* Variables and functions */
 int ACPI_MADT_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct lapic_info* lapics ; 
 int max_apic_id ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 

__attribute__((used)) static void
FUNC3(u_int acpi_id, u_int apic_id, u_int flags)
{
	struct lapic_info *la;

	/*
	 * The MADT does not include a BSP flag, so we have to let the
	 * MP code figure out which CPU is the BSP on its own.
	 */
	if (bootverbose)
		FUNC2("MADT: Found CPU APIC ID %u ACPI ID %u: %s\n",
		    apic_id, acpi_id, flags & ACPI_MADT_ENABLED ?
		    "enabled" : "disabled");
	if (!(flags & ACPI_MADT_ENABLED))
		return;
	if (apic_id > max_apic_id) {
		FUNC2("MADT: Ignoring local APIC ID %u (too high)\n",
		    apic_id);
		return;
	}

	la = &lapics[apic_id];
	FUNC0(la->la_enabled == 0, ("Duplicate local APIC ID %u", apic_id));
	la->la_enabled = 1;
	la->la_acpi_id = acpi_id;
	FUNC1(apic_id, 0);
}