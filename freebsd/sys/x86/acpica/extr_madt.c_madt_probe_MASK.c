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

/* Variables and functions */
 int /*<<< orphan*/  ACPI_SIG_MADT ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ madt_physaddr ; 

__attribute__((used)) static int
FUNC1(void)
{

	madt_physaddr = FUNC0(ACPI_SIG_MADT);
	if (madt_physaddr == 0)
		return (ENXIO);
	return (-50);
}