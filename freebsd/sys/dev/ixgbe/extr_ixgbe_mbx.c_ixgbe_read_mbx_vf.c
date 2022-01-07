
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_3__ {int msgs_rx; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct ixgbe_hw {TYPE_2__ mbx; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_READ_REG_ARRAY (struct ixgbe_hw*,int ,size_t) ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_VFMAILBOX ;
 int IXGBE_VFMAILBOX_ACK ;
 int IXGBE_VFMBMEM ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int UNREFERENCED_1PARAMETER (size_t) ;
 scalar_t__ ixgbe_obtain_mbx_lock_vf (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_read_mbx_vf(struct ixgbe_hw *hw, u32 *msg, u16 size,
        u16 mbx_id)
{
 s32 ret_val = IXGBE_SUCCESS;
 u16 i;

 DEBUGFUNC("ixgbe_read_mbx_vf");
 UNREFERENCED_1PARAMETER(mbx_id);


 ret_val = ixgbe_obtain_mbx_lock_vf(hw);
 if (ret_val)
  goto out_no_read;


 for (i = 0; i < size; i++)
  msg[i] = IXGBE_READ_REG_ARRAY(hw, IXGBE_VFMBMEM, i);


 IXGBE_WRITE_REG(hw, IXGBE_VFMAILBOX, IXGBE_VFMAILBOX_ACK);


 hw->mbx.stats.msgs_rx++;

out_no_read:
 return ret_val;
}
