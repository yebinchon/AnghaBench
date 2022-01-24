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
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(driver_t *driver, device_t parent)
{
	ACPI_HANDLE handle;
	device_t dev;

	/* Make sure we're not being doubly invoked. */
	if (FUNC4(parent, "acpi_perf", -1) != NULL)
		return;

	/* Get the handle for the Processor object and check for perf states. */
	handle = FUNC3(parent);
	if (handle == NULL)
		return;
	if (FUNC0(FUNC1(handle, "_PSS", NULL, NULL)))
		return;

	/*
	 * Add a child to every CPU that has the right methods.  In future
	 * versions of the ACPI spec, CPUs can have different settings.
	 * We probe this child now so that other devices that depend
	 * on it (i.e., for info about supported states) will see it.
	 */
	if ((dev = FUNC2(parent, 0, "acpi_perf", -1)) != NULL)
		FUNC6(dev);
	else
		FUNC5(parent, "add acpi_perf child failed\n");
}