#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
struct TYPE_4__ {int Length; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ACPI_TABLE_HEADER *
FUNC1(vm_offset_t pa)
{
	ACPI_TABLE_HEADER *sp;

	sp = FUNC0(pa, sizeof(ACPI_TABLE_HEADER));
	sp = FUNC0(pa, sp->Length);
	return (sp);
}