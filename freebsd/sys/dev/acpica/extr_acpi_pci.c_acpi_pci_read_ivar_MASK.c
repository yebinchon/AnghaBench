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
struct acpi_pci_devinfo {int /*<<< orphan*/  ap_flags; int /*<<< orphan*/  ap_handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  ACPI_IVAR_FLAGS 129 
#define  ACPI_IVAR_HANDLE 128 
 struct acpi_pci_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,uintptr_t*) ; 

__attribute__((used)) static int
FUNC2(device_t dev, device_t child, int which, uintptr_t *result)
{
    struct acpi_pci_devinfo *dinfo;

    dinfo = FUNC0(child);
    switch (which) {
    case ACPI_IVAR_HANDLE:
	*result = (uintptr_t)dinfo->ap_handle;
	return (0);
    case ACPI_IVAR_FLAGS:
	*result = (uintptr_t)dinfo->ap_flags;
	return (0);
    }
    return (FUNC1(dev, child, which, result));
}