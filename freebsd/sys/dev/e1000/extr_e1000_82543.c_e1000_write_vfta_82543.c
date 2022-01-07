
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int DEBUGFUNC (char*) ;
 int E1000_READ_REG_ARRAY (struct e1000_hw*,int ,int) ;
 int E1000_VFTA ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,int,int) ;
 scalar_t__ e1000_82544 ;
 int e1000_write_vfta_generic (struct e1000_hw*,int,int) ;

__attribute__((used)) static void e1000_write_vfta_82543(struct e1000_hw *hw, u32 offset, u32 value)
{
 u32 temp;

 DEBUGFUNC("e1000_write_vfta_82543");

 if ((hw->mac.type == e1000_82544) && (offset & 1)) {
  temp = E1000_READ_REG_ARRAY(hw, E1000_VFTA, offset - 1);
  E1000_WRITE_REG_ARRAY(hw, E1000_VFTA, offset, value);
  E1000_WRITE_FLUSH(hw);
  E1000_WRITE_REG_ARRAY(hw, E1000_VFTA, offset - 1, temp);
  E1000_WRITE_FLUSH(hw);
 } else {
  e1000_write_vfta_generic(hw, offset, value);
 }
}
