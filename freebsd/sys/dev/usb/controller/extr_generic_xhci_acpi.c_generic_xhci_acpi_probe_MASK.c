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
 scalar_t__ ACPI_MATCHHID_NOMATCH ; 
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  XHCI_HC_DEVSTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	ACPI_HANDLE h;

	if ((h = FUNC1(dev)) == NULL ||
	    FUNC0(h, "PNP0D10") == ACPI_MATCHHID_NOMATCH)
		return (ENXIO);

	FUNC2(dev, XHCI_HC_DEVSTR);

	return (BUS_PROBE_DEFAULT);
}