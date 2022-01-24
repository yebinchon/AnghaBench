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
struct TYPE_2__ {scalar_t__ gpd_devid; int /*<<< orphan*/ * gpd_desc; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* gem_pci_devlist ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	int i;

	for (i = 0; gem_pci_devlist[i].gpd_desc != NULL; i++) {
		if (FUNC1(dev) == gem_pci_devlist[i].gpd_devid) {
			FUNC0(dev, gem_pci_devlist[i].gpd_desc);
			return (BUS_PROBE_DEFAULT);
		}
	}

	return (ENXIO);
}