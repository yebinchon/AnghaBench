
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int (* set_lan_id ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {TYPE_1__ ops; } ;
struct e1000_bus_info {int width; void* speed; int type; } ;
struct e1000_hw {struct e1000_bus_info bus; struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;
typedef enum e1000_bus_width { ____Placeholder_e1000_bus_width } e1000_bus_width ;


 int DEBUGFUNC (char*) ;
 scalar_t__ E1000_SUCCESS ;


 int PCIE_LINK_SPEED_MASK ;
 int PCIE_LINK_STATUS ;
 int PCIE_LINK_WIDTH_MASK ;
 int PCIE_LINK_WIDTH_SHIFT ;
 void* e1000_bus_speed_2500 ;
 void* e1000_bus_speed_5000 ;
 void* e1000_bus_speed_unknown ;
 int e1000_bus_type_pci_express ;
 int e1000_bus_width_unknown ;
 scalar_t__ e1000_read_pcie_cap_reg (struct e1000_hw*,int ,int*) ;
 int stub1 (struct e1000_hw*) ;

s32 e1000_get_bus_info_pcie_generic(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 struct e1000_bus_info *bus = &hw->bus;
 s32 ret_val;
 u16 pcie_link_status;

 DEBUGFUNC("e1000_get_bus_info_pcie_generic");

 bus->type = e1000_bus_type_pci_express;

 ret_val = e1000_read_pcie_cap_reg(hw, PCIE_LINK_STATUS,
       &pcie_link_status);
 if (ret_val) {
  bus->width = e1000_bus_width_unknown;
  bus->speed = e1000_bus_speed_unknown;
 } else {
  switch (pcie_link_status & PCIE_LINK_SPEED_MASK) {
  case 129:
   bus->speed = e1000_bus_speed_2500;
   break;
  case 128:
   bus->speed = e1000_bus_speed_5000;
   break;
  default:
   bus->speed = e1000_bus_speed_unknown;
   break;
  }

  bus->width = (enum e1000_bus_width)((pcie_link_status &
         PCIE_LINK_WIDTH_MASK) >> PCIE_LINK_WIDTH_SHIFT);
 }

 mac->ops.set_lan_id(hw);

 return E1000_SUCCESS;
}
