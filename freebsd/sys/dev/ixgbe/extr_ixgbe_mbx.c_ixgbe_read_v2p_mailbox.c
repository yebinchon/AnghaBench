
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int v2p_mailbox; } ;
struct ixgbe_hw {TYPE_1__ mbx; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VFMAILBOX ;
 int IXGBE_VFMAILBOX_R2C_BITS ;

__attribute__((used)) static u32 ixgbe_read_v2p_mailbox(struct ixgbe_hw *hw)
{
 u32 v2p_mailbox = IXGBE_READ_REG(hw, IXGBE_VFMAILBOX);

 v2p_mailbox |= hw->mbx.v2p_mailbox;
 hw->mbx.v2p_mailbox |= v2p_mailbox & IXGBE_VFMAILBOX_R2C_BITS;

 return v2p_mailbox;
}
