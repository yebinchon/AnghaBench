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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int acpi_cpu_disabled ; 
 int acpi_hpet_disabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int acpi_timer_disabled ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	int error;
	device_t acpi_dev = NULL;

	FUNC5();
	FUNC3(dev);

	if (FUNC7()) {
		/* Disable some ACPI devices that are not usable by Dom0 */
		acpi_cpu_disabled = true;
		acpi_hpet_disabled = true;
		acpi_timer_disabled = true;

		acpi_dev = FUNC0(dev, 10, "acpi", 0);
		if (acpi_dev == NULL)
			FUNC6("Unable to add ACPI bus to Xen Dom0");
	}

	error = FUNC2(dev);
	if (FUNC7() && (error == 0))
		FUNC1(FUNC4(acpi_dev));

	return (error);
}