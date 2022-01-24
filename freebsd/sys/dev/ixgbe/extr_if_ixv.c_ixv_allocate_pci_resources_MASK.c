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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int /*<<< orphan*/  mem_bus_space_handle; int /*<<< orphan*/  mem_bus_space_tag; } ;
struct TYPE_3__ {int /*<<< orphan*/ * hw_addr; } ;
struct adapter {TYPE_2__ osdep; TYPE_1__ hw; int /*<<< orphan*/  pci_mem; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC4(ctx);
	device_t       dev = FUNC3(ctx);
	int            rid;

	rid = FUNC0(0);
	adapter->pci_mem = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);

	if (!(adapter->pci_mem)) {
		FUNC2(dev, "Unable to allocate bus resource: memory\n");
		return (ENXIO);
	}

	adapter->osdep.mem_bus_space_tag = FUNC6(adapter->pci_mem);
	adapter->osdep.mem_bus_space_handle =
	    FUNC5(adapter->pci_mem);
	adapter->hw.hw_addr = (u8 *)&adapter->osdep.mem_bus_space_handle;

	return (0);
}