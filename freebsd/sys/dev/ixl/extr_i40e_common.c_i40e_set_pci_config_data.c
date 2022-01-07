
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int speed; int width; int type; } ;
struct i40e_hw {TYPE_1__ bus; } ;


 int I40E_PCI_LINK_SPEED ;



 int I40E_PCI_LINK_WIDTH ;




 int i40e_bus_speed_2500 ;
 int i40e_bus_speed_5000 ;
 int i40e_bus_speed_8000 ;
 int i40e_bus_speed_unknown ;
 int i40e_bus_type_pci_express ;
 int i40e_bus_width_pcie_x1 ;
 int i40e_bus_width_pcie_x2 ;
 int i40e_bus_width_pcie_x4 ;
 int i40e_bus_width_pcie_x8 ;
 int i40e_bus_width_unknown ;

void i40e_set_pci_config_data(struct i40e_hw *hw, u16 link_status)
{
 hw->bus.type = i40e_bus_type_pci_express;

 switch (link_status & I40E_PCI_LINK_WIDTH) {
 case 131:
  hw->bus.width = i40e_bus_width_pcie_x1;
  break;
 case 130:
  hw->bus.width = i40e_bus_width_pcie_x2;
  break;
 case 129:
  hw->bus.width = i40e_bus_width_pcie_x4;
  break;
 case 128:
  hw->bus.width = i40e_bus_width_pcie_x8;
  break;
 default:
  hw->bus.width = i40e_bus_width_unknown;
  break;
 }

 switch (link_status & I40E_PCI_LINK_SPEED) {
 case 134:
  hw->bus.speed = i40e_bus_speed_2500;
  break;
 case 133:
  hw->bus.speed = i40e_bus_speed_5000;
  break;
 case 132:
  hw->bus.speed = i40e_bus_speed_8000;
  break;
 default:
  hw->bus.speed = i40e_bus_speed_unknown;
  break;
 }
}
