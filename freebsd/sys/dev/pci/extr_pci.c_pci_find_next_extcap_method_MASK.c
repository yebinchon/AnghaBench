#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_3__ {scalar_t__ pcie_location; } ;
struct TYPE_4__ {TYPE_1__ pcie; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
typedef  TYPE_2__ pcicfgregs ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct pci_devinfo* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

int
FUNC5(device_t dev, device_t child, int capability,
    int start, int *capreg)
{
	struct pci_devinfo *dinfo = FUNC3(child);
	pcicfgregs *cfg = &dinfo->cfg;
	uint32_t ecap;
	uint16_t ptr;

	/* Only supported for PCI-express devices. */
	if (cfg->pcie.pcie_location == 0)
		return (ENXIO);

	ecap = FUNC4(child, start, 4);
	FUNC0(FUNC1(ecap) == capability,
	    ("start extended capability is not expected capability"));
	ptr = FUNC2(ecap);
	while (ptr != 0) {
		ecap = FUNC4(child, ptr, 4);
		if (FUNC1(ecap) == capability) {
			if (capreg != NULL)
				*capreg = ptr;
			return (0);
		}
		ptr = FUNC2(ecap);
	}

	return (ENOENT);
}