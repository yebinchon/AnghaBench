
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int ) ;int (* check_reset_block ) (struct e1000_hw*) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int HV_OEM_BITS ;
 int HV_OEM_BITS_LPLU ;
 int HV_OEM_BITS_RESTART_AN ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int *) ;
 int stub2 (struct e1000_hw*) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_set_lplu_state_pchlan(struct e1000_hw *hw, bool active)
{
 s32 ret_val;
 u16 oem_reg;

 DEBUGFUNC("e1000_set_lplu_state_pchlan");
 ret_val = hw->phy.ops.read_reg(hw, HV_OEM_BITS, &oem_reg);
 if (ret_val)
  return ret_val;

 if (active)
  oem_reg |= HV_OEM_BITS_LPLU;
 else
  oem_reg &= ~HV_OEM_BITS_LPLU;

 if (!hw->phy.ops.check_reset_block(hw))
  oem_reg |= HV_OEM_BITS_RESTART_AN;

 return hw->phy.ops.write_reg(hw, HV_OEM_BITS, oem_reg);
}
