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
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ ACPI_OBJECT_TYPE ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int ENXIO ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	ACPI_HANDLE devh, h;
	ACPI_OBJECT_TYPE t_dos;

	devh = FUNC4(dev);
	if (FUNC3("video") ||
	    FUNC0(FUNC1(devh, "_DOD", &h)) ||
	    FUNC0(FUNC1(devh, "_DOS", &h)) ||
	    FUNC0(FUNC2(h, &t_dos)) ||
	    t_dos != ACPI_TYPE_METHOD)
		return (ENXIO);

	FUNC5(dev, "ACPI video extension");
	return (0);
}