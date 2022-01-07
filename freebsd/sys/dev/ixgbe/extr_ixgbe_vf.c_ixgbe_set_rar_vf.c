
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int addr; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int IXGBE_ERR_MBX ;
 int IXGBE_VF_SET_MAC_ADDR ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int IXGBE_VT_MSGTYPE_NACK ;
 int UNREFERENCED_3PARAMETER (int,int,int) ;
 int ixgbe_get_mac_addr_vf (struct ixgbe_hw*,int ) ;
 int ixgbevf_write_msg_read_ack (struct ixgbe_hw*,int*,int*,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int*,int ,int) ;

s32 ixgbe_set_rar_vf(struct ixgbe_hw *hw, u32 index, u8 *addr, u32 vmdq,
       u32 enable_addr)
{
 u32 msgbuf[3];
 u8 *msg_addr = (u8 *)(&msgbuf[1]);
 s32 ret_val;
 UNREFERENCED_3PARAMETER(vmdq, enable_addr, index);

 memset(msgbuf, 0, 12);
 msgbuf[0] = IXGBE_VF_SET_MAC_ADDR;
 memcpy(msg_addr, addr, 6);
 ret_val = ixgbevf_write_msg_read_ack(hw, msgbuf, msgbuf, 3);

 msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;


 if (!ret_val &&
     (msgbuf[0] == (IXGBE_VF_SET_MAC_ADDR | IXGBE_VT_MSGTYPE_NACK))) {
  ixgbe_get_mac_addr_vf(hw, hw->mac.addr);
  return IXGBE_ERR_MBX;
 }

 return ret_val;
}
