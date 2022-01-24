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
typedef  scalar_t__ ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ACPI_STATE_D0 ; 
 int ACPI_STATE_D3 ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ AE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ pci_do_power_resume ; 
 scalar_t__ pci_do_power_suspend ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_powerstate ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev, device_t child, int state)
{
	ACPI_HANDLE h;
	ACPI_STATUS status;
	int old_state, error;

	error = 0;
	if (state < ACPI_STATE_D0 || state > ACPI_STATE_D3)
		return (EINVAL);

	/*
	 * We set the state using PCI Power Management outside of setting
	 * the ACPI state.  This means that when powering down a device, we
	 * first shut it down using PCI, and then using ACPI, which lets ACPI
	 * try to power down any Power Resources that are now no longer used.
	 * When powering up a device, we let ACPI set the state first so that
	 * it can enable any needed Power Resources before changing the PCI
	 * power state.
	 */
	FUNC0(pci_powerstate);
	old_state = FUNC8(child);
	if (old_state < state && pci_do_power_suspend) {
		error = FUNC9(dev, child, state);
		if (error)
			goto out;
	}
	h = FUNC4(child);
	status = FUNC6(h, state);
	if (FUNC2(status)) {
		if (bootverbose)
			FUNC7(dev, "set ACPI power state D%d on %s\n",
			    state, FUNC5(h));
	} else if (status != AE_NOT_FOUND)
		FUNC7(dev,
		    "failed to set ACPI power state D%d on %s: %s\n",
		    state, FUNC5(h), FUNC3(status));
	if (old_state > state && pci_do_power_resume)
		error = FUNC9(dev, child, state);

out:
	FUNC1(pci_powerstate);
	return (error);
}