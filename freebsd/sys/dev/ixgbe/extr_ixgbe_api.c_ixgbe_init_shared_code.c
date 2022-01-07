
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int max_link_up_time; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_ERR_DEVICE_NOT_SUPPORTED ;
 int IXGBE_LINK_UP_TIME ;
 int ixgbe_init_ops_82598 (struct ixgbe_hw*) ;
 int ixgbe_init_ops_82599 (struct ixgbe_hw*) ;
 int ixgbe_init_ops_X540 (struct ixgbe_hw*) ;
 int ixgbe_init_ops_X550 (struct ixgbe_hw*) ;
 int ixgbe_init_ops_X550EM_a (struct ixgbe_hw*) ;
 int ixgbe_init_ops_X550EM_x (struct ixgbe_hw*) ;






 int ixgbe_set_mac_type (struct ixgbe_hw*) ;

s32 ixgbe_init_shared_code(struct ixgbe_hw *hw)
{
 s32 status;

 DEBUGFUNC("ixgbe_init_shared_code");




 ixgbe_set_mac_type(hw);

 switch (hw->mac.type) {
 case 133:
  status = ixgbe_init_ops_82598(hw);
  break;
 case 132:
  status = ixgbe_init_ops_82599(hw);
  break;
 case 131:
  status = ixgbe_init_ops_X540(hw);
  break;
 case 130:
  status = ixgbe_init_ops_X550(hw);
  break;
 case 128:
  status = ixgbe_init_ops_X550EM_x(hw);
  break;
 case 129:
  status = ixgbe_init_ops_X550EM_a(hw);
  break;
 default:
  status = IXGBE_ERR_DEVICE_NOT_SUPPORTED;
  break;
 }
 hw->mac.max_link_up_time = IXGBE_LINK_UP_TIME;

 return status;
}
