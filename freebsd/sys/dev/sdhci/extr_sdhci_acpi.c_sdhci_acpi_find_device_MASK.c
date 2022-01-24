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
struct sdhci_acpi_device {int uid; int /*<<< orphan*/ * hid; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct sdhci_acpi_device const* sdhci_acpi_devices ; 
 int /*<<< orphan*/  sdhci_ids ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static const struct sdhci_acpi_device *
FUNC6(device_t dev)
{
	char *hid;
	int i, uid;
	ACPI_HANDLE handle;
	ACPI_STATUS status;
	int rv;

	rv = FUNC1(FUNC4(dev), dev, sdhci_ids, &hid);
	if (rv > 0)
		return (NULL);

	handle = FUNC3(dev);
	status = FUNC2(handle, "_UID", &uid);
	if (FUNC0(status))
		uid = 0;

	for (i = 0; sdhci_acpi_devices[i].hid != NULL; i++) {
		if (FUNC5(sdhci_acpi_devices[i].hid, hid) != 0)
			continue;
		if ((sdhci_acpi_devices[i].uid != 0) &&
		    (sdhci_acpi_devices[i].uid != uid))
			continue;
		return (&sdhci_acpi_devices[i]);
	}

	return (NULL);
}