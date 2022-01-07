
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int (* read_posted ) (struct e1000_hw*,int*,int,int ) ;int (* write_posted ) (struct e1000_hw*,int*,int,int ) ;int (* check_for_rst ) (struct e1000_hw*,int ) ;} ;
struct e1000_mbx_info {TYPE_1__ ops; int timeout; } ;
struct TYPE_4__ {int perm_addr; } ;
struct e1000_hw {TYPE_2__ mac; struct e1000_mbx_info mbx; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_RST ;
 int E1000_ERR_MAC_INIT ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_VF_INIT_TIMEOUT ;
 int E1000_VF_MBX_INIT_TIMEOUT ;
 int E1000_VF_RESET ;
 int E1000_VT_MSGTYPE_ACK ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int memcpy (int ,int *,int) ;
 int msec_delay (int) ;
 int stub1 (struct e1000_hw*,int ) ;
 int stub2 (struct e1000_hw*,int*,int,int ) ;
 int stub3 (struct e1000_hw*,int*,int,int ) ;
 int usec_delay (int) ;

__attribute__((used)) static s32 e1000_reset_hw_vf(struct e1000_hw *hw)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 u32 timeout = E1000_VF_INIT_TIMEOUT;
 s32 ret_val = -E1000_ERR_MAC_INIT;
 u32 ctrl, msgbuf[3];
 u8 *addr = (u8 *)(&msgbuf[1]);

 DEBUGFUNC("e1000_reset_hw_vf");

 DEBUGOUT("Issuing a function level reset to MAC\n");
 ctrl = E1000_READ_REG(hw, E1000_CTRL);
 E1000_WRITE_REG(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);


 while (!mbx->ops.check_for_rst(hw, 0) && timeout) {
  timeout--;
  usec_delay(5);
 }

 if (timeout) {

  mbx->timeout = E1000_VF_MBX_INIT_TIMEOUT;

  msgbuf[0] = E1000_VF_RESET;
  mbx->ops.write_posted(hw, msgbuf, 1, 0);

  msec_delay(10);


  ret_val = mbx->ops.read_posted(hw, msgbuf, 3, 0);
  if (!ret_val) {
   if (msgbuf[0] == (E1000_VF_RESET |
       E1000_VT_MSGTYPE_ACK))
    memcpy(hw->mac.perm_addr, addr, 6);
   else
    ret_val = -E1000_ERR_MAC_INIT;
  }
 }

 return ret_val;
}
