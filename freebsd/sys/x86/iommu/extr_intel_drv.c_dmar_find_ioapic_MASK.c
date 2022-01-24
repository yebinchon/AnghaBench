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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u_int ;
struct dmar_unit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DMAR_SCOPE_TYPE_IOAPIC ; 
 struct dmar_unit* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct dmar_unit *
FUNC1(u_int apic_id, uint16_t *rid)
{

	return (FUNC0(apic_id, ACPI_DMAR_SCOPE_TYPE_IOAPIC, rid));
}