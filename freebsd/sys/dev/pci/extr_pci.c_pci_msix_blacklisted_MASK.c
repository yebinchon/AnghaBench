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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_QUIRK_DISABLE_MSIX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_honor_msi_blacklist ; 
 int FUNC3 () ; 

__attribute__((used)) static int
FUNC4(void)
{
	device_t dev;

	if (!pci_honor_msi_blacklist)
		return (0);

	dev = FUNC0(0, 0, 0);
	if (dev != NULL && FUNC2(FUNC1(dev),
	    PCI_QUIRK_DISABLE_MSIX))
		return (1);

	return (FUNC3());
}