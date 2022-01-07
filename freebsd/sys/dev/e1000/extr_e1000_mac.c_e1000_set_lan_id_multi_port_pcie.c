
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_bus_info {int func; } ;
struct e1000_hw {struct e1000_bus_info bus; } ;


 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STATUS ;
 int E1000_STATUS_FUNC_MASK ;
 int E1000_STATUS_FUNC_SHIFT ;

__attribute__((used)) static void e1000_set_lan_id_multi_port_pcie(struct e1000_hw *hw)
{
 struct e1000_bus_info *bus = &hw->bus;
 u32 reg;




 reg = E1000_READ_REG(hw, E1000_STATUS);
 bus->func = (reg & E1000_STATUS_FUNC_MASK) >> E1000_STATUS_FUNC_SHIFT;
}
