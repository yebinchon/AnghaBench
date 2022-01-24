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
typedef  long u_long ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,long*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,char*,long*) ; 

__attribute__((used)) static u_long
FUNC2(void)
{
	long acpi_root;

	if (FUNC0("acpi.rsdp", &acpi_root))
		return (acpi_root);

	/*
	 * The hints mechanism is unreliable (it fails if anybody ever
	 * compiled in hints to the kernel). It has been replaced
	 * by the tunable method, but is used here as a fallback to
	 * retain maximum compatibility between old loaders and new
	 * kernels. It can be removed after 11.0R.
	 */
	if (FUNC1("acpi", 0, "rsdp", &acpi_root) == 0)
		return (acpi_root);

	return (0);
}