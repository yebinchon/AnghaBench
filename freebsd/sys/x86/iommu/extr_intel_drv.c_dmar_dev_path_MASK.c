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
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ devclass_t ;
struct TYPE_2__ {int /*<<< orphan*/  Function; int /*<<< orphan*/  Device; } ;
typedef  TYPE_1__ ACPI_DMAR_PCI_PATH ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(device_t child, int *busno, void *path1, int depth)
{
	devclass_t pci_class;
	device_t bus, pcib;
	ACPI_DMAR_PCI_PATH *path;

	pci_class = FUNC0("pci");
	path = path1;
	for (depth--; depth != -1; depth--) {
		path[depth].Device = FUNC5(child);
		path[depth].Function = FUNC4(child);
		bus = FUNC2(child);
		pcib = FUNC2(bus);
		if (FUNC1(FUNC2(pcib)) !=
		    pci_class) {
			/* reached a host bridge */
			*busno = FUNC6(bus);
			return;
		}
		child = pcib;
	}
	FUNC3("wrong depth");
}