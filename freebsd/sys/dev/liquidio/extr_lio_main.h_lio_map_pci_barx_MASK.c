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
struct TYPE_2__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  tag; int /*<<< orphan*/ * pci_mem; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC7(struct octeon_device *oct, int baridx)
{
	int	rid = FUNC1(baridx * 2);

	oct->mem_bus_space[baridx].pci_mem =
		FUNC2(oct->device, SYS_RES_MEMORY, &rid,
				       RF_ACTIVE);

	if (oct->mem_bus_space[baridx].pci_mem == NULL) {
		FUNC4(oct, "Unable to allocate bus resource: memory\n");
		return (ENXIO);
	}

	/* Save bus_space values for READ/WRITE_REG macros */
	oct->mem_bus_space[baridx].tag =
		FUNC6(oct->mem_bus_space[baridx].pci_mem);
	oct->mem_bus_space[baridx].handle =
		FUNC5(oct->mem_bus_space[baridx].pci_mem);

	FUNC3(oct, "BAR%d Tag 0x%llx Handle 0x%llx\n",
		    baridx, FUNC0(oct->mem_bus_space[baridx].tag),
		    FUNC0(oct->mem_bus_space[baridx].handle));

	return (0);
}