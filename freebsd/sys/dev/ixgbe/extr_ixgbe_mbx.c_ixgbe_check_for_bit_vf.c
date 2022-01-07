
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int v2p_mailbox; } ;
struct ixgbe_hw {TYPE_1__ mbx; } ;
typedef int s32 ;


 int IXGBE_ERR_MBX ;
 int IXGBE_SUCCESS ;
 int ixgbe_read_v2p_mailbox (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_check_for_bit_vf(struct ixgbe_hw *hw, u32 mask)
{
 u32 v2p_mailbox = ixgbe_read_v2p_mailbox(hw);
 s32 ret_val = IXGBE_ERR_MBX;

 if (v2p_mailbox & mask)
  ret_val = IXGBE_SUCCESS;

 hw->mbx.v2p_mailbox &= ~mask;

 return ret_val;
}
