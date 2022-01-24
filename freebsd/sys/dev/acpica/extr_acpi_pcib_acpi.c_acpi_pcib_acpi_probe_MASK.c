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
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int Flags; } ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;
typedef  TYPE_1__ ACPI_DEVICE_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_PCI_ROOT_BRIDGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int ENXIO ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
    ACPI_DEVICE_INFO	*devinfo;
    ACPI_HANDLE		h;
    int			root;

    if (FUNC3("pcib") || (h = FUNC4(dev)) == NULL ||
	FUNC0(FUNC1(h, &devinfo)))
	return (ENXIO);
    root = (devinfo->Flags & ACPI_PCI_ROOT_BRIDGE) != 0;
    FUNC2(devinfo);
    if (!root || FUNC6() == 0)
	return (ENXIO);

    FUNC5(dev, "ACPI Host-PCI bridge");
    return (0);
}