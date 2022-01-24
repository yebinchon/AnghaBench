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
struct acpi_pci_devinfo {scalar_t__ ap_handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int*) ; 
 char* FUNC2 (scalar_t__) ; 
 struct acpi_pci_devinfo* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC7(device_t cbdev, device_t child, char *buf,
    size_t buflen)
{
    struct acpi_pci_devinfo *dinfo = FUNC3(child);
    int pxm;
    char buf2[32];

    FUNC4(cbdev, child, buf, buflen);

    if (dinfo->ap_handle) {
        FUNC6(buf, " handle=", buflen);
        FUNC6(buf, FUNC2(dinfo->ap_handle), buflen);

        if (FUNC0(FUNC1(dinfo->ap_handle, "_PXM", &pxm))) {
                FUNC5(buf2, 32, " _PXM=%d", pxm);
                FUNC6(buf, buf2, buflen);
        }
    }
    return (0);
}