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
struct acpi_pci_devinfo {int /*<<< orphan*/  ap_handle; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_fake_objhandler ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct acpi_pci_devinfo* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(device_t dev, device_t child)
{
	struct acpi_pci_devinfo *dinfo = FUNC2(child);

	if (FUNC1(dinfo->ap_handle) == child)
		FUNC0(dinfo->ap_handle, acpi_fake_objhandler);
	FUNC3(dev, child);
}