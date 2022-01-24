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
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	ACPI_HANDLE ah;

	if (FUNC0("usb"))
		return (ENXIO);

	ah = FUNC1(dev);
	if (ah == NULL)
		return (ENXIO);

	if (FUNC2(dev) <= 0) {
		/* success prior than non-ACPI USB HUB */
		return (BUS_PROBE_DEFAULT + 1);
	}
	return (ENXIO);
}