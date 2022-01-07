
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* get_device_caps ) (struct ixgbe_hw*,int*) ;int (* clear_hw_cntrs ) (struct ixgbe_hw*) ;int (* clear_vfta ) (struct ixgbe_hw*) ;int (* get_media_type ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int type; TYPE_2__ ops; } ;
struct TYPE_4__ {int media_type; } ;
struct ixgbe_hw {void* adapter_stopped; void* need_crosstalk_fix; TYPE_3__ mac; TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,scalar_t__) ;
 void* FALSE ;
 int IXGBE_CTRL_EXT ;
 int IXGBE_CTRL_EXT_NS_DIS ;
 int IXGBE_DEVICE_CAPS_NO_CROSSTALK_WR ;
 scalar_t__ IXGBE_NOT_IMPLEMENTED ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 void* TRUE ;



 scalar_t__ ixgbe_setup_fc (struct ixgbe_hw*) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;
 int stub3 (struct ixgbe_hw*) ;
 int stub4 (struct ixgbe_hw*,int*) ;

s32 ixgbe_start_hw_generic(struct ixgbe_hw *hw)
{
 s32 ret_val;
 u32 ctrl_ext;
 u16 device_caps;

 DEBUGFUNC("ixgbe_start_hw_generic");


 hw->phy.media_type = hw->mac.ops.get_media_type(hw);




 hw->mac.ops.clear_vfta(hw);


 hw->mac.ops.clear_hw_cntrs(hw);


 ctrl_ext = IXGBE_READ_REG(hw, IXGBE_CTRL_EXT);
 ctrl_ext |= IXGBE_CTRL_EXT_NS_DIS;
 IXGBE_WRITE_REG(hw, IXGBE_CTRL_EXT, ctrl_ext);
 IXGBE_WRITE_FLUSH(hw);


 ret_val = ixgbe_setup_fc(hw);
 if (ret_val != IXGBE_SUCCESS && ret_val != IXGBE_NOT_IMPLEMENTED) {
  DEBUGOUT1("Flow control setup failed, returning %d\n", ret_val);
  return ret_val;
 }


 switch (hw->mac.type) {
 case 130:
 case 128:
 case 129:
  hw->mac.ops.get_device_caps(hw, &device_caps);
  if (device_caps & IXGBE_DEVICE_CAPS_NO_CROSSTALK_WR)
   hw->need_crosstalk_fix = FALSE;
  else
   hw->need_crosstalk_fix = TRUE;
  break;
 default:
  hw->need_crosstalk_fix = FALSE;
  break;
 }


 hw->adapter_stopped = FALSE;

 return IXGBE_SUCCESS;
}
