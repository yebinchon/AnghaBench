#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {void* io_bus_space_handle; void* io_bus_space_tag; void* mem_bus_space_handle; void* mem_bus_space_tag; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_3__* back; scalar_t__ io_base; TYPE_1__ mac; int /*<<< orphan*/ * hw_addr; } ;
struct adapter {TYPE_3__ osdep; TYPE_2__ hw; int /*<<< orphan*/ * ioport; int /*<<< orphan*/ * memory; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ EM_BAR_MEM_TYPE_64BIT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ EM_BAR_TYPE_IO ; 
 int ENXIO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int PCIR_CIS ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ e1000_82543 ; 
 scalar_t__ em_mac_min ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC6(ctx);
	device_t dev = FUNC5(ctx);
	int rid, val;

	rid = FUNC2(0);
	adapter->memory = FUNC3(dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE);
	if (adapter->memory == NULL) {
		FUNC4(dev, "Unable to allocate bus resource: memory\n");
		return (ENXIO);
	}
	adapter->osdep.mem_bus_space_tag = FUNC9(adapter->memory);
	adapter->osdep.mem_bus_space_handle =
	    FUNC8(adapter->memory);
	adapter->hw.hw_addr = (u8 *)&adapter->osdep.mem_bus_space_handle;

	/* Only older adapters use IO mapping */
	if (adapter->hw.mac.type < em_mac_min &&
	    adapter->hw.mac.type > e1000_82543) {
		/* Figure our where our IO BAR is ? */
		for (rid = FUNC2(0); rid < PCIR_CIS;) {
			val = FUNC7(dev, rid, 4);
			if (FUNC1(val) == EM_BAR_TYPE_IO) {
				break;
			}
			rid += 4;
			/* check for 64bit BAR */
			if (FUNC0(val) == EM_BAR_MEM_TYPE_64BIT)
				rid += 4;
		}
		if (rid >= PCIR_CIS) {
			FUNC4(dev, "Unable to locate IO BAR\n");
			return (ENXIO);
		}
		adapter->ioport = FUNC3(dev, SYS_RES_IOPORT,
		    &rid, RF_ACTIVE);
		if (adapter->ioport == NULL) {
			FUNC4(dev, "Unable to allocate bus resource: "
			    "ioport\n");
			return (ENXIO);
		}
		adapter->hw.io_base = 0;
		adapter->osdep.io_bus_space_tag =
		    FUNC9(adapter->ioport);
		adapter->osdep.io_bus_space_handle =
		    FUNC8(adapter->ioport);
	}

	adapter->hw.back = &adapter->osdep;

	return (0);
}