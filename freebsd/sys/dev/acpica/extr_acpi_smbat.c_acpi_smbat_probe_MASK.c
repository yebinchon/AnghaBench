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
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	static char *smbat_ids[] = {"ACPI0001", "ACPI0005", NULL};
	ACPI_STATUS status;
	int rv;

	if (FUNC3("smbat"))
		return (ENXIO);
	rv = FUNC1(FUNC5(dev), dev, smbat_ids, NULL);
	if (rv > 0)
	  return (rv);
	status = FUNC2(FUNC4(dev), "_EC", NULL, NULL);
	if (FUNC0(status))
		return (ENXIO);
	FUNC6(dev, "ACPI Smart Battery");
	return (rv);
}