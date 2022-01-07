
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int speed; int type; } ;
struct e1000_hw {TYPE_1__ bus; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_SUCCESS ;
 int e1000_bus_speed_unknown ;
 int e1000_bus_type_pci ;
 int e1000_bus_width_unknown ;

__attribute__((used)) static s32 e1000_get_bus_info_82542(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_get_bus_info_82542");

 hw->bus.type = e1000_bus_type_pci;
 hw->bus.speed = e1000_bus_speed_unknown;
 hw->bus.width = e1000_bus_width_unknown;

 return E1000_SUCCESS;
}
