
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_ERR_MBX ;
 int E1000_SUCCESS ;
 int E1000_V2PMAILBOX (int ) ;
 int E1000_V2PMAILBOX_VFU ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int e1000_read_v2p_mailbox (struct e1000_hw*) ;
 int usec_delay (int) ;

__attribute__((used)) static s32 e1000_obtain_mbx_lock_vf(struct e1000_hw *hw)
{
 s32 ret_val = -E1000_ERR_MBX;
 int count = 10;

 DEBUGFUNC("e1000_obtain_mbx_lock_vf");

 do {

  E1000_WRITE_REG(hw, E1000_V2PMAILBOX(0), E1000_V2PMAILBOX_VFU);


  if (e1000_read_v2p_mailbox(hw) & E1000_V2PMAILBOX_VFU) {
   ret_val = E1000_SUCCESS;
   break;
  }
  usec_delay(1000);
 } while (count-- > 0);

 return ret_val;
}
