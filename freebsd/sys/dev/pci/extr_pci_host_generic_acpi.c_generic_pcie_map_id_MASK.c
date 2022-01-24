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
typedef  int u_int ;
struct TYPE_2__ {int /*<<< orphan*/  ecam; } ;
struct generic_pcie_acpi_softc {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ID_RID ; 
 int FUNC0 (int /*<<< orphan*/ ,uintptr_t,int*,int*) ; 
 struct generic_pcie_acpi_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t*) ; 

__attribute__((used)) static u_int
FUNC3(device_t pci, device_t child, uintptr_t *id)
{
	struct generic_pcie_acpi_softc *sc;
	uintptr_t rid;
	u_int xref, devid;
	int err;

	sc = FUNC1(pci);
	err = FUNC2(pci, child, PCI_ID_RID, &rid);
	if (err != 0)
		return (err);
        err = FUNC0(sc->base.ecam, rid, &xref, &devid);
	if (err == 0)
		*id = devid;
	else
		*id = rid;	/* RID not in IORT, likely FW bug, ignore */
	return (0);
}