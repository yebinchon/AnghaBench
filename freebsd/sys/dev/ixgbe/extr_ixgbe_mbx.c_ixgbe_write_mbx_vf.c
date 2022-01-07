
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_4__ {int msgs_tx; } ;
struct TYPE_3__ {TYPE_2__ stats; } ;
struct ixgbe_hw {TYPE_1__ mbx; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_VFMAILBOX ;
 int IXGBE_VFMAILBOX_REQ ;
 int IXGBE_VFMBMEM ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int IXGBE_WRITE_REG_ARRAY (struct ixgbe_hw*,int ,size_t,int ) ;
 int UNREFERENCED_1PARAMETER (size_t) ;
 int ixgbe_check_for_ack_vf (struct ixgbe_hw*,int ) ;
 int ixgbe_check_for_msg_vf (struct ixgbe_hw*,int ) ;
 scalar_t__ ixgbe_obtain_mbx_lock_vf (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_write_mbx_vf(struct ixgbe_hw *hw, u32 *msg, u16 size,
         u16 mbx_id)
{
 s32 ret_val;
 u16 i;

 UNREFERENCED_1PARAMETER(mbx_id);

 DEBUGFUNC("ixgbe_write_mbx_vf");


 ret_val = ixgbe_obtain_mbx_lock_vf(hw);
 if (ret_val)
  goto out_no_write;


 ixgbe_check_for_msg_vf(hw, 0);
 ixgbe_check_for_ack_vf(hw, 0);


 for (i = 0; i < size; i++)
  IXGBE_WRITE_REG_ARRAY(hw, IXGBE_VFMBMEM, i, msg[i]);


 hw->mbx.stats.msgs_tx++;


 IXGBE_WRITE_REG(hw, IXGBE_VFMAILBOX, IXGBE_VFMAILBOX_REQ);

out_no_write:
 return ret_val;
}
