
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int reqs; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct ixgbe_hw {TYPE_2__ mbx; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_ERR_MBX ;
 int IXGBE_SUCCESS ;
 int IXGBE_VFMAILBOX_PFSTS ;
 int UNREFERENCED_1PARAMETER (int ) ;
 int ixgbe_check_for_bit_vf (struct ixgbe_hw*,int ) ;

__attribute__((used)) static s32 ixgbe_check_for_msg_vf(struct ixgbe_hw *hw, u16 mbx_id)
{
 s32 ret_val = IXGBE_ERR_MBX;

 UNREFERENCED_1PARAMETER(mbx_id);
 DEBUGFUNC("ixgbe_check_for_msg_vf");

 if (!ixgbe_check_for_bit_vf(hw, IXGBE_VFMAILBOX_PFSTS)) {
  ret_val = IXGBE_SUCCESS;
  hw->mbx.stats.reqs++;
 }

 return ret_val;
}
