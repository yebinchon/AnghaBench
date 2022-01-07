
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_bus_info {int speed; int type; } ;
struct e1000_hw {struct e1000_bus_info bus; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int e1000_bus_speed_2500 ;
 int e1000_bus_type_reserved ;

__attribute__((used)) static s32 e1000_get_bus_info_pcie_vf(struct e1000_hw *hw)
{
 struct e1000_bus_info *bus = &hw->bus;

 DEBUGFUNC("e1000_get_bus_info_pcie_vf");


 bus->type = e1000_bus_type_reserved;
 bus->speed = e1000_bus_speed_2500;

 return 0;
}
