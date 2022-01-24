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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {scalar_t__ speed; scalar_t__ width; } ;
struct TYPE_3__ {int type; } ;
struct ixgbe_hw {int device_id; TYPE_2__ bus; TYPE_1__ mac; } ;
struct adapter {struct ixgbe_hw hw; int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FALSE ; 
#define  IXGBE_DEV_ID_82599_QSFP_SF_QP 131 
#define  IXGBE_DEV_ID_82599_SFP_SF_QP 130 
 scalar_t__ PCIER_LINK_STA ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_bus_speed_2500 ; 
 scalar_t__ ixgbe_bus_speed_5000 ; 
 scalar_t__ ixgbe_bus_speed_8000 ; 
 scalar_t__ ixgbe_bus_width_pcie_x1 ; 
 scalar_t__ ixgbe_bus_width_pcie_x4 ; 
 scalar_t__ ixgbe_bus_width_pcie_x8 ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
#define  ixgbe_mac_X550EM_a 129 
#define  ixgbe_mac_X550EM_x 128 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC10(struct adapter *adapter)
{
	device_t        dev = FUNC2(adapter->ctx);
	struct ixgbe_hw *hw = &adapter->hw;
	int             bus_info_valid = TRUE;
	u32             offset;
	u16             link;

	/* Some devices are behind an internal bridge */
	switch (hw->device_id) {
	case IXGBE_DEV_ID_82599_SFP_SF_QP:
	case IXGBE_DEV_ID_82599_QSFP_SF_QP:
		goto get_parent_info;
	default:
		break;
	}

	FUNC3(hw);

	/*
	 * Some devices don't use PCI-E, but there is no need
	 * to display "Unknown" for bus speed and width.
	 */
	switch (hw->mac.type) {
	case ixgbe_mac_X550EM_x:
	case ixgbe_mac_X550EM_a:
		return;
	default:
		goto display;
	}

get_parent_info:
	/*
	 * For the Quad port adapter we need to parse back
	 * up the PCI tree to find the speed of the expansion
	 * slot into which this adapter is plugged. A bit more work.
	 */
	dev = FUNC0(FUNC0(dev));
#ifdef IXGBE_DEBUG
	device_printf(dev, "parent pcib = %x,%x,%x\n", pci_get_bus(dev),
	    pci_get_slot(dev), pci_get_function(dev));
#endif
	dev = FUNC0(FUNC0(dev));
#ifdef IXGBE_DEBUG
	device_printf(dev, "slot pcib = %x,%x,%x\n", pci_get_bus(dev),
	    pci_get_slot(dev), pci_get_function(dev));
#endif
	/* Now get the PCI Express Capabilities offset */
	if (FUNC5(dev, PCIY_EXPRESS, &offset)) {
		/*
		 * Hmm...can't get PCI-Express capabilities.
		 * Falling back to default method.
		 */
		bus_info_valid = FALSE;
		FUNC3(hw);
		goto display;
	}
	/* ...and read the Link Status Register */
	link = FUNC9(dev, offset + PCIER_LINK_STA, 2);
	FUNC4(hw, link);

display:
	FUNC1(dev, "PCI Express Bus: Speed %s %s\n",
	    ((hw->bus.speed == ixgbe_bus_speed_8000)    ? "8.0GT/s"  :
	     (hw->bus.speed == ixgbe_bus_speed_5000)    ? "5.0GT/s"  :
	     (hw->bus.speed == ixgbe_bus_speed_2500)    ? "2.5GT/s"  :
	     "Unknown"),
	    ((hw->bus.width == ixgbe_bus_width_pcie_x8) ? "Width x8" :
	     (hw->bus.width == ixgbe_bus_width_pcie_x4) ? "Width x4" :
	     (hw->bus.width == ixgbe_bus_width_pcie_x1) ? "Width x1" :
	     "Unknown"));

	if (bus_info_valid) {
		if ((hw->device_id != IXGBE_DEV_ID_82599_SFP_SF_QP) &&
		    ((hw->bus.width <= ixgbe_bus_width_pcie_x4) &&
		    (hw->bus.speed == ixgbe_bus_speed_2500))) {
			FUNC1(dev, "PCI-Express bandwidth available for this card\n     is not sufficient for optimal performance.\n");
			FUNC1(dev, "For optimal performance a x8 PCIE, or x4 PCIE Gen2 slot is required.\n");
		}
		if ((hw->device_id == IXGBE_DEV_ID_82599_SFP_SF_QP) &&
		    ((hw->bus.width <= ixgbe_bus_width_pcie_x8) &&
		    (hw->bus.speed < ixgbe_bus_speed_8000))) {
			FUNC1(dev, "PCI-Express bandwidth available for this card\n     is not sufficient for optimal performance.\n");
			FUNC1(dev, "For optimal performance a x8 PCIE Gen3 slot is required.\n");
		}
	} else
		FUNC1(dev, "Unable to determine slot speed/width. The speed/width reported are that of the internal switch.\n");

	return;
}