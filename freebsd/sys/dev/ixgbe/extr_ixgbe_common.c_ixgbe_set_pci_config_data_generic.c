
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int (* set_lan_id ) (struct ixgbe_hw*) ;} ;
struct ixgbe_mac_info {TYPE_2__ ops; } ;
struct TYPE_3__ {scalar_t__ type; int speed; int width; } ;
struct ixgbe_hw {TYPE_1__ bus; struct ixgbe_mac_info mac; } ;


 int IXGBE_PCI_LINK_SPEED ;



 int IXGBE_PCI_LINK_WIDTH ;




 int ixgbe_bus_speed_2500 ;
 int ixgbe_bus_speed_5000 ;
 int ixgbe_bus_speed_8000 ;
 int ixgbe_bus_speed_unknown ;
 scalar_t__ ixgbe_bus_type_pci_express ;
 scalar_t__ ixgbe_bus_type_unknown ;
 int ixgbe_bus_width_pcie_x1 ;
 int ixgbe_bus_width_pcie_x2 ;
 int ixgbe_bus_width_pcie_x4 ;
 int ixgbe_bus_width_pcie_x8 ;
 int ixgbe_bus_width_unknown ;
 int stub1 (struct ixgbe_hw*) ;

void ixgbe_set_pci_config_data_generic(struct ixgbe_hw *hw, u16 link_status)
{
 struct ixgbe_mac_info *mac = &hw->mac;

 if (hw->bus.type == ixgbe_bus_type_unknown)
  hw->bus.type = ixgbe_bus_type_pci_express;

 switch (link_status & IXGBE_PCI_LINK_WIDTH) {
 case 131:
  hw->bus.width = ixgbe_bus_width_pcie_x1;
  break;
 case 130:
  hw->bus.width = ixgbe_bus_width_pcie_x2;
  break;
 case 129:
  hw->bus.width = ixgbe_bus_width_pcie_x4;
  break;
 case 128:
  hw->bus.width = ixgbe_bus_width_pcie_x8;
  break;
 default:
  hw->bus.width = ixgbe_bus_width_unknown;
  break;
 }

 switch (link_status & IXGBE_PCI_LINK_SPEED) {
 case 134:
  hw->bus.speed = ixgbe_bus_speed_2500;
  break;
 case 133:
  hw->bus.speed = ixgbe_bus_speed_5000;
  break;
 case 132:
  hw->bus.speed = ixgbe_bus_speed_8000;
  break;
 default:
  hw->bus.speed = ixgbe_bus_speed_unknown;
  break;
 }

 mac->ops.set_lan_id(hw);
}
