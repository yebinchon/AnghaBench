
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* set_lan_id ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {TYPE_1__ ops; } ;
struct e1000_bus_info {scalar_t__ type; int width; void* speed; } ;
struct e1000_hw {struct e1000_bus_info bus; struct e1000_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STATUS ;
 int E1000_STATUS_BUS64 ;
 int E1000_STATUS_PCI66 ;
 int E1000_STATUS_PCIX_MODE ;
 int E1000_STATUS_PCIX_SPEED ;



 int E1000_SUCCESS ;
 void* e1000_bus_speed_100 ;
 void* e1000_bus_speed_133 ;
 void* e1000_bus_speed_33 ;
 void* e1000_bus_speed_66 ;
 void* e1000_bus_speed_reserved ;
 scalar_t__ e1000_bus_type_pci ;
 scalar_t__ e1000_bus_type_pcix ;
 int e1000_bus_width_32 ;
 int e1000_bus_width_64 ;
 int stub1 (struct e1000_hw*) ;

s32 e1000_get_bus_info_pci_generic(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 struct e1000_bus_info *bus = &hw->bus;
 u32 status = E1000_READ_REG(hw, E1000_STATUS);
 s32 ret_val = E1000_SUCCESS;

 DEBUGFUNC("e1000_get_bus_info_pci_generic");


 bus->type = (status & E1000_STATUS_PCIX_MODE)
   ? e1000_bus_type_pcix
   : e1000_bus_type_pci;


 if (bus->type == e1000_bus_type_pci) {
  bus->speed = (status & E1000_STATUS_PCI66)
        ? e1000_bus_speed_66
        : e1000_bus_speed_33;
 } else {
  switch (status & E1000_STATUS_PCIX_SPEED) {
  case 128:
   bus->speed = e1000_bus_speed_66;
   break;
  case 130:
   bus->speed = e1000_bus_speed_100;
   break;
  case 129:
   bus->speed = e1000_bus_speed_133;
   break;
  default:
   bus->speed = e1000_bus_speed_reserved;
   break;
  }
 }


 bus->width = (status & E1000_STATUS_BUS64)
       ? e1000_bus_width_64
       : e1000_bus_width_32;


 mac->ops.set_lan_id(hw);

 return ret_val;
}
