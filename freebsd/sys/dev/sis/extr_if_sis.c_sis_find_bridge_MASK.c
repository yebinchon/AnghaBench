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
typedef  int /*<<< orphan*/ * devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ SIS_VENDORID ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC6(device_t dev)
{
	devclass_t		pci_devclass;
	device_t		*pci_devices;
	int			pci_count = 0;
	device_t		*pci_children;
	int			pci_childcount = 0;
	device_t		*busp, *childp;
	device_t		child = NULL;
	int			i, j;

	if ((pci_devclass = FUNC0("pci")) == NULL)
		return (NULL);

	FUNC1(pci_devclass, &pci_devices, &pci_count);

	for (i = 0, busp = pci_devices; i < pci_count; i++, busp++) {
		if (FUNC2(*busp, &pci_children, &pci_childcount))
			continue;
		for (j = 0, childp = pci_children;
		    j < pci_childcount; j++, childp++) {
			if (FUNC5(*childp) == SIS_VENDORID &&
			    FUNC4(*childp) == 0x0008) {
				child = *childp;
				FUNC3(pci_children, M_TEMP);
				goto done;
			}
		}
		FUNC3(pci_children, M_TEMP);
	}

done:
	FUNC3(pci_devices, M_TEMP);
	return (child);
}