
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int ERROR_REPORT2 (int ,char*,int ) ;
 int IXGBE_ERROR_POLLING ;
 int IXGBE_ERR_MBX ;
 int IXGBE_PFMAILBOX (int ) ;
 int IXGBE_PFMAILBOX_PFU ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static s32 ixgbe_obtain_mbx_lock_pf(struct ixgbe_hw *hw, u16 vf_number)
{
 s32 ret_val = IXGBE_ERR_MBX;
 u32 p2v_mailbox;

 DEBUGFUNC("ixgbe_obtain_mbx_lock_pf");


 IXGBE_WRITE_REG(hw, IXGBE_PFMAILBOX(vf_number), IXGBE_PFMAILBOX_PFU);


 p2v_mailbox = IXGBE_READ_REG(hw, IXGBE_PFMAILBOX(vf_number));
 if (p2v_mailbox & IXGBE_PFMAILBOX_PFU)
  ret_val = IXGBE_SUCCESS;
 else
  ERROR_REPORT2(IXGBE_ERROR_POLLING,
      "Failed to obtain mailbox lock for VF%d", vf_number);


 return ret_val;
}
