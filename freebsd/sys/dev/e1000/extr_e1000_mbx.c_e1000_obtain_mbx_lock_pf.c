
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_ERR_MBX ;
 int E1000_P2VMAILBOX (int ) ;
 int E1000_P2VMAILBOX_PFU ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int usec_delay (int) ;

__attribute__((used)) static s32 e1000_obtain_mbx_lock_pf(struct e1000_hw *hw, u16 vf_number)
{
 s32 ret_val = -E1000_ERR_MBX;
 u32 p2v_mailbox;
 int count = 10;

 DEBUGFUNC("e1000_obtain_mbx_lock_pf");

 do {

  E1000_WRITE_REG(hw, E1000_P2VMAILBOX(vf_number),
    E1000_P2VMAILBOX_PFU);


  p2v_mailbox = E1000_READ_REG(hw, E1000_P2VMAILBOX(vf_number));
  if (p2v_mailbox & E1000_P2VMAILBOX_PFU) {
   ret_val = E1000_SUCCESS;
   break;
  }
  usec_delay(1000);
 } while (count-- > 0);

 return ret_val;

}
