
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ rar_entry_count; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int DEBUGOUT2 (char*,int,int) ;
 int E1000_ERR_CONFIG ;
 int E1000_FWSM ;
 int E1000_RAH (int) ;
 int E1000_RAH_AV ;
 int E1000_RAL (int) ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SHRAH (int) ;
 int E1000_SHRAL (int) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_acquire_swflag_ich8lan (struct e1000_hw*) ;
 int e1000_release_swflag_ich8lan (struct e1000_hw*) ;

__attribute__((used)) static int e1000_rar_set_pch2lan(struct e1000_hw *hw, u8 *addr, u32 index)
{
 u32 rar_low, rar_high;

 DEBUGFUNC("e1000_rar_set_pch2lan");




 rar_low = ((u32) addr[0] |
     ((u32) addr[1] << 8) |
     ((u32) addr[2] << 16) | ((u32) addr[3] << 24));

 rar_high = ((u32) addr[4] | ((u32) addr[5] << 8));


 if (rar_low || rar_high)
  rar_high |= E1000_RAH_AV;

 if (index == 0) {
  E1000_WRITE_REG(hw, E1000_RAL(index), rar_low);
  E1000_WRITE_FLUSH(hw);
  E1000_WRITE_REG(hw, E1000_RAH(index), rar_high);
  E1000_WRITE_FLUSH(hw);
  return E1000_SUCCESS;
 }




 if (index < (u32) (hw->mac.rar_entry_count)) {
  s32 ret_val;

  ret_val = e1000_acquire_swflag_ich8lan(hw);
  if (ret_val)
   goto out;

  E1000_WRITE_REG(hw, E1000_SHRAL(index - 1), rar_low);
  E1000_WRITE_FLUSH(hw);
  E1000_WRITE_REG(hw, E1000_SHRAH(index - 1), rar_high);
  E1000_WRITE_FLUSH(hw);

  e1000_release_swflag_ich8lan(hw);


  if ((E1000_READ_REG(hw, E1000_SHRAL(index - 1)) == rar_low) &&
      (E1000_READ_REG(hw, E1000_SHRAH(index - 1)) == rar_high))
   return E1000_SUCCESS;

  DEBUGOUT2("SHRA[%d] might be locked by ME - FWSM=0x%8.8x\n",
    (index - 1), E1000_READ_REG(hw, E1000_FWSM));
 }

out:
 DEBUGOUT1("Failed to write receive address at index %d\n", index);
 return -E1000_ERR_CONFIG;
}
