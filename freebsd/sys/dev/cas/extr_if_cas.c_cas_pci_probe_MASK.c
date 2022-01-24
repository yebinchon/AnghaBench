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
struct TYPE_2__ {scalar_t__ cpd_devid; scalar_t__ cpd_revid; int /*<<< orphan*/ * cpd_desc; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 TYPE_1__* cas_pci_devlist ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	int i;

	for (i = 0; cas_pci_devlist[i].cpd_desc != NULL; i++) {
		if (FUNC1(dev) == cas_pci_devlist[i].cpd_devid &&
		    FUNC2(dev) >= cas_pci_devlist[i].cpd_revid) {
			FUNC0(dev, cas_pci_devlist[i].cpd_desc);
			return (BUS_PROBE_DEFAULT);
		}
	}

	return (ENXIO);
}