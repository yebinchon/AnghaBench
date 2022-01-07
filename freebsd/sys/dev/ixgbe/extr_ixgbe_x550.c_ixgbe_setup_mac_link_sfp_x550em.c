
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {scalar_t__ (* write_link ) (struct ixgbe_hw*,int ,int,int) ;} ;
struct TYPE_6__ {int addr; TYPE_2__ ops; } ;
struct TYPE_4__ {int lan_id; } ;
struct ixgbe_hw {TYPE_3__ link; TYPE_1__ bus; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 int FALSE ;
 int IXGBE_CS4227_EDC_MODE_CX1 ;
 int IXGBE_CS4227_EDC_MODE_SR ;
 int IXGBE_CS4227_LINE_SPARE24_LSB ;
 scalar_t__ IXGBE_ERR_SFP_NOT_PRESENT ;
 scalar_t__ IXGBE_SUCCESS ;
 int UNREFERENCED_1PARAMETER (int) ;
 int ixgbe_setup_kr_speed_x550em (struct ixgbe_hw*,int ) ;
 scalar_t__ ixgbe_supported_sfp_modules_X550em (struct ixgbe_hw*,int*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int,int) ;

s32 ixgbe_setup_mac_link_sfp_x550em(struct ixgbe_hw *hw,
        ixgbe_link_speed speed,
        bool autoneg_wait_to_complete)
{
 s32 ret_val;
 u16 reg_slice, reg_val;
 bool setup_linear = FALSE;
 UNREFERENCED_1PARAMETER(autoneg_wait_to_complete);


 ret_val = ixgbe_supported_sfp_modules_X550em(hw, &setup_linear);





 if (ret_val == IXGBE_ERR_SFP_NOT_PRESENT)
  return IXGBE_SUCCESS;

 if (ret_val != IXGBE_SUCCESS)
  return ret_val;


 ixgbe_setup_kr_speed_x550em(hw, speed);


 reg_slice = IXGBE_CS4227_LINE_SPARE24_LSB +
      (hw->bus.lan_id << 12);
 if (setup_linear)
  reg_val = (IXGBE_CS4227_EDC_MODE_CX1 << 1) | 0x1;
 else
  reg_val = (IXGBE_CS4227_EDC_MODE_SR << 1) | 0x1;
 ret_val = hw->link.ops.write_link(hw, hw->link.addr, reg_slice,
       reg_val);
 return ret_val;
}
