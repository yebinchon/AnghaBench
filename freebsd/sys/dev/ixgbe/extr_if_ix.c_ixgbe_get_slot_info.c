
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ speed; scalar_t__ width; } ;
struct TYPE_3__ {int type; } ;
struct ixgbe_hw {int device_id; TYPE_2__ bus; TYPE_1__ mac; } ;
struct adapter {struct ixgbe_hw hw; int ctx; } ;
typedef int device_t ;


 int FALSE ;


 scalar_t__ PCIER_LINK_STA ;
 int PCIY_EXPRESS ;
 int TRUE ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,...) ;
 int iflib_get_dev (int ) ;
 scalar_t__ ixgbe_bus_speed_2500 ;
 scalar_t__ ixgbe_bus_speed_5000 ;
 scalar_t__ ixgbe_bus_speed_8000 ;
 scalar_t__ ixgbe_bus_width_pcie_x1 ;
 scalar_t__ ixgbe_bus_width_pcie_x4 ;
 scalar_t__ ixgbe_bus_width_pcie_x8 ;
 int ixgbe_get_bus_info (struct ixgbe_hw*) ;


 int ixgbe_set_pci_config_data_generic (struct ixgbe_hw*,int ) ;
 scalar_t__ pci_find_cap (int ,int ,scalar_t__*) ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int pci_read_config (int ,scalar_t__,int) ;

__attribute__((used)) static void
ixgbe_get_slot_info(struct adapter *adapter)
{
 device_t dev = iflib_get_dev(adapter->ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 int bus_info_valid = TRUE;
 u32 offset;
 u16 link;


 switch (hw->device_id) {
 case 130:
 case 131:
  goto get_parent_info;
 default:
  break;
 }

 ixgbe_get_bus_info(hw);





 switch (hw->mac.type) {
 case 128:
 case 129:
  return;
 default:
  goto display;
 }

get_parent_info:





 dev = device_get_parent(device_get_parent(dev));




 dev = device_get_parent(device_get_parent(dev));





 if (pci_find_cap(dev, PCIY_EXPRESS, &offset)) {




  bus_info_valid = FALSE;
  ixgbe_get_bus_info(hw);
  goto display;
 }

 link = pci_read_config(dev, offset + PCIER_LINK_STA, 2);
 ixgbe_set_pci_config_data_generic(hw, link);

display:
 device_printf(dev, "PCI Express Bus: Speed %s %s\n",
     ((hw->bus.speed == ixgbe_bus_speed_8000) ? "8.0GT/s" :
      (hw->bus.speed == ixgbe_bus_speed_5000) ? "5.0GT/s" :
      (hw->bus.speed == ixgbe_bus_speed_2500) ? "2.5GT/s" :
      "Unknown"),
     ((hw->bus.width == ixgbe_bus_width_pcie_x8) ? "Width x8" :
      (hw->bus.width == ixgbe_bus_width_pcie_x4) ? "Width x4" :
      (hw->bus.width == ixgbe_bus_width_pcie_x1) ? "Width x1" :
      "Unknown"));

 if (bus_info_valid) {
  if ((hw->device_id != 130) &&
      ((hw->bus.width <= ixgbe_bus_width_pcie_x4) &&
      (hw->bus.speed == ixgbe_bus_speed_2500))) {
   device_printf(dev, "PCI-Express bandwidth available for this card\n     is not sufficient for optimal performance.\n");
   device_printf(dev, "For optimal performance a x8 PCIE, or x4 PCIE Gen2 slot is required.\n");
  }
  if ((hw->device_id == 130) &&
      ((hw->bus.width <= ixgbe_bus_width_pcie_x8) &&
      (hw->bus.speed < ixgbe_bus_speed_8000))) {
   device_printf(dev, "PCI-Express bandwidth available for this card\n     is not sufficient for optimal performance.\n");
   device_printf(dev, "For optimal performance a x8 PCIE Gen3 slot is required.\n");
  }
 } else
  device_printf(dev, "Unable to determine slot speed/width. The speed/width reported are that of the internal switch.\n");

 return;
}
