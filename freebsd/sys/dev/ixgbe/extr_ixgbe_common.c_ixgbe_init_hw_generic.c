
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* reset_hw ) (struct ixgbe_hw*) ;scalar_t__ (* start_hw ) (struct ixgbe_hw*) ;int (* init_led_link_act ) (struct ixgbe_hw*) ;} ;
struct TYPE_3__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,scalar_t__) ;
 scalar_t__ IXGBE_ERR_SFP_NOT_PRESENT ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub2 (struct ixgbe_hw*) ;
 int stub3 (struct ixgbe_hw*) ;

s32 ixgbe_init_hw_generic(struct ixgbe_hw *hw)
{
 s32 status;

 DEBUGFUNC("ixgbe_init_hw_generic");


 status = hw->mac.ops.reset_hw(hw);

 if (status == IXGBE_SUCCESS || status == IXGBE_ERR_SFP_NOT_PRESENT) {

  status = hw->mac.ops.start_hw(hw);
 }


 if (hw->mac.ops.init_led_link_act)
  hw->mac.ops.init_led_link_act(hw);

 if (status != IXGBE_SUCCESS)
  DEBUGOUT1("Failed to initialize HW, STATUS = %d\n", status);

 return status;
}
