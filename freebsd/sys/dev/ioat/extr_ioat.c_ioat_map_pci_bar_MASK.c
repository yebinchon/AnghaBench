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
struct ioat_softc {int /*<<< orphan*/ * pci_resource; int /*<<< orphan*/  pci_bus_handle; int /*<<< orphan*/  pci_bus_tag; int /*<<< orphan*/  pci_resource_id; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct ioat_softc *ioat)
{

	ioat->pci_resource_id = FUNC0(0);
	ioat->pci_resource = FUNC1(ioat->device,
	    SYS_RES_MEMORY, &ioat->pci_resource_id, RF_ACTIVE);

	if (ioat->pci_resource == NULL) {
		FUNC2(0, "unable to allocate pci resource\n");
		return (ENODEV);
	}

	ioat->pci_bus_tag = FUNC4(ioat->pci_resource);
	ioat->pci_bus_handle = FUNC3(ioat->pci_resource);
	return (0);
}