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
struct TYPE_6__ {int /*<<< orphan*/  mem_bus_space_handle; int /*<<< orphan*/  dev; int /*<<< orphan*/  flush_reg; int /*<<< orphan*/  mem_bus_space_size; int /*<<< orphan*/  mem_bus_space_tag; } ;
struct TYPE_5__ {int /*<<< orphan*/  func; int /*<<< orphan*/  device; } ;
struct i40e_hw {TYPE_3__* back; int /*<<< orphan*/ * hw_addr; TYPE_2__ bus; void* subsystem_device_id; void* subsystem_vendor_id; void* revision_id; int /*<<< orphan*/  device_id; int /*<<< orphan*/  vendor_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  ctx; } ;
struct ixl_pf {TYPE_3__ osdep; struct i40e_hw hw; int /*<<< orphan*/  pci_mem; TYPE_1__ vsi; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  I40E_GLGEN_STAT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIR_REVID ; 
 int /*<<< orphan*/  PCIR_SUBDEV_0 ; 
 int /*<<< orphan*/  PCIR_SUBVEND_0 ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct ixl_pf *pf)
{
	device_t dev = FUNC3(pf->vsi.ctx);
	struct i40e_hw *hw = &pf->hw;
	int             rid;

	/* Map BAR0 */
	rid = FUNC0(0);
	pf->pci_mem = FUNC1(dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE);
 
	if (!(pf->pci_mem)) {
		FUNC2(dev, "Unable to allocate bus resource: PCI memory\n");
		return (ENXIO);
	}

	/* Save off the PCI information */
	hw->vendor_id = FUNC7(dev);
	hw->device_id = FUNC4(dev);
	hw->revision_id = FUNC8(dev, PCIR_REVID, 1);
	hw->subsystem_vendor_id =
	    FUNC8(dev, PCIR_SUBVEND_0, 2);
	hw->subsystem_device_id =
	    FUNC8(dev, PCIR_SUBDEV_0, 2);

	hw->bus.device = FUNC6(dev);
	hw->bus.func = FUNC5(dev);

	/* Save off register access information */
	pf->osdep.mem_bus_space_tag =
		FUNC10(pf->pci_mem);
	pf->osdep.mem_bus_space_handle =
		FUNC9(pf->pci_mem);
	pf->osdep.mem_bus_space_size = FUNC11(pf->pci_mem);
	pf->osdep.flush_reg = I40E_GLGEN_STAT;
	pf->osdep.dev = dev;

	pf->hw.hw_addr = (u8 *) &pf->osdep.mem_bus_space_handle;
	pf->hw.back = &pf->osdep;
 
 	return (0);
 }