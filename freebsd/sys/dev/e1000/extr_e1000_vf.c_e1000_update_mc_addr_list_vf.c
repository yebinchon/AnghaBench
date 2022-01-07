
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int E1000_VFMAILBOX_SIZE ;
 int E1000_VF_SET_MULTICAST ;
 int E1000_VF_SET_MULTICAST_OVERFLOW ;
 int E1000_VT_MSGINFO_SHIFT ;
 int ETHER_ADDR_LEN ;
 int e1000_hash_mc_addr_vf (struct e1000_hw*,int *) ;
 int e1000_write_msg_read_ack (struct e1000_hw*,int*,int) ;

void e1000_update_mc_addr_list_vf(struct e1000_hw *hw,
      u8 *mc_addr_list, u32 mc_addr_count)
{
 u32 msgbuf[E1000_VFMAILBOX_SIZE];
 u16 *hash_list = (u16 *)&msgbuf[1];
 u32 hash_value;
 u32 i;

 DEBUGFUNC("e1000_update_mc_addr_list_vf");
 DEBUGOUT1("MC Addr Count = %d\n", mc_addr_count);

 if (mc_addr_count > 30) {
  msgbuf[0] |= E1000_VF_SET_MULTICAST_OVERFLOW;
  mc_addr_count = 30;
 }

 msgbuf[0] = E1000_VF_SET_MULTICAST;
 msgbuf[0] |= mc_addr_count << E1000_VT_MSGINFO_SHIFT;

 for (i = 0; i < mc_addr_count; i++) {
  hash_value = e1000_hash_mc_addr_vf(hw, mc_addr_list);
  DEBUGOUT1("Hash value = 0x%03X\n", hash_value);
  hash_list[i] = hash_value & 0x0FFF;
  mc_addr_list += ETHER_ADDR_LEN;
 }

 e1000_write_msg_read_ack(hw, msgbuf, E1000_VFMAILBOX_SIZE);
}
