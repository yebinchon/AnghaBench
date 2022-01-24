#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct pci_devinfo {TYPE_1__ cfg; int /*<<< orphan*/  resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pci_devinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pci_devinfo*) ; 
 int /*<<< orphan*/  pci_add_device ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct pci_devinfo*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct pci_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ pci_clear_aer_on_attach ; 
 int /*<<< orphan*/  FUNC8 (struct pci_devinfo*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(device_t bus, struct pci_devinfo *dinfo)
{
	device_t dev;

	dinfo->cfg.dev = dev = FUNC1(bus, NULL, -1);
	FUNC2(dev, dinfo);
	FUNC9(&dinfo->resources);
	FUNC6(dev, dinfo, 0);
	FUNC5(dev, dinfo);
	FUNC8(dinfo);
	FUNC4(bus, dev, 0, 0);
	FUNC7(dinfo->cfg.dev);

	if (pci_clear_aer_on_attach)
		FUNC3(dev, dinfo);

	FUNC0(pci_add_device, dinfo->cfg.dev);
}