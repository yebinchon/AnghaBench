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
typedef  int uint32_t ;

/* Variables and functions */
 int ACPI_SRAT_CPU_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(uint32_t apic_id, uint32_t proximity_domain,
    uint32_t flags)
{

	FUNC0("\tFlags={");
	if (flags & ACPI_SRAT_CPU_ENABLED)
		FUNC0("ENABLED");
	else
		FUNC0("DISABLED");
	FUNC0("}\n");
	FUNC0("\tAPIC ID=%d\n", apic_id);
	FUNC0("\tProximity Domain=%d\n", proximity_domain);
}