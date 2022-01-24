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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_3__ {scalar_t__ pcie_location; } ;
struct TYPE_4__ {TYPE_1__ pcie; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
typedef  TYPE_2__ pcicfgregs ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int PCIR_EXTCAP ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct pci_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 

int
FUNC4(device_t dev, device_t child, int capability,
    int *capreg)
{
	struct pci_devinfo *dinfo = FUNC2(child);
	pcicfgregs *cfg = &dinfo->cfg;
	uint32_t ecap;
	uint16_t ptr;

	/* Only supported for PCI-express devices. */
	if (cfg->pcie.pcie_location == 0)
		return (ENXIO);

	ptr = PCIR_EXTCAP;
	ecap = FUNC3(child, ptr, 4);
	if (ecap == 0xffffffff || ecap == 0)
		return (ENOENT);
	for (;;) {
		if (FUNC0(ecap) == capability) {
			if (capreg != NULL)
				*capreg = ptr;
			return (0);
		}
		ptr = FUNC1(ecap);
		if (ptr == 0)
			break;
		ecap = FUNC3(child, ptr, 4);
	}

	return (ENOENT);
}