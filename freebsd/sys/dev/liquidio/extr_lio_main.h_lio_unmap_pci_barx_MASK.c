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
struct octeon_device {TYPE_1__* mem_bus_space; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pci_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,char*,int) ; 

__attribute__((used)) static inline void
FUNC3(struct octeon_device *oct, int baridx)
{

	FUNC2(oct, "Freeing PCI mapped regions for Bar%d\n", baridx);

	if (oct->mem_bus_space[baridx].pci_mem != NULL) {
		FUNC1(oct->device, SYS_RES_MEMORY,
				     FUNC0(baridx * 2),
				     oct->mem_bus_space[baridx].pci_mem);
		oct->mem_bus_space[baridx].pci_mem = NULL;
	}
}