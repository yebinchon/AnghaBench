
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_VFTA ;
 scalar_t__ E1000_VLAN_FILTER_TBL_SIZE ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,scalar_t__,int ) ;

void e1000_clear_vfta_generic(struct e1000_hw *hw)
{
 u32 offset;

 DEBUGFUNC("e1000_clear_vfta_generic");

 for (offset = 0; offset < E1000_VLAN_FILTER_TBL_SIZE; offset++) {
  E1000_WRITE_REG_ARRAY(hw, E1000_VFTA, offset, 0);
  E1000_WRITE_FLUSH(hw);
 }
}
