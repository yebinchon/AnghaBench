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
 int ACPI_MADT_PERFORMANCE_IRQ_MODE ; 
 int ACPI_MADT_VGIC_IRQ_MODE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1(uint32_t flags)
{

	FUNC0("\tFlags={Performance intr=");
	if (flags & ACPI_MADT_PERFORMANCE_IRQ_MODE)
		FUNC0("edge");
	else
		FUNC0("level");
	FUNC0(", VGIC intr=");
	if (flags & ACPI_MADT_VGIC_IRQ_MODE)
		FUNC0("edge");
	else
		FUNC0("level");
	FUNC0("}\n");
}