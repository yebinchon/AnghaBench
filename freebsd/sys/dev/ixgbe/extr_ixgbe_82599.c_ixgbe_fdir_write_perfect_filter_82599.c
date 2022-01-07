
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* src_ip; int* dst_ip; scalar_t__ tunnel_type; int tni_vni; int bkt_hash; int flow_type; scalar_t__ vm_pool; scalar_t__* inner_mac; int vlan_id; int flex_bytes; int src_port; int dst_port; } ;
union ixgbe_atr_input {TYPE_1__ formatted; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int IXGBE_ATR_L4TYPE_TUNNEL_MASK ;
 int IXGBE_FDIRCMD ;
 int IXGBE_FDIRCMD_CMD_ADD_FLOW ;
 int IXGBE_FDIRCMD_DROP ;
 int IXGBE_FDIRCMD_FILTER_UPDATE ;
 int IXGBE_FDIRCMD_FLOW_TYPE_SHIFT ;
 int IXGBE_FDIRCMD_LAST ;
 int IXGBE_FDIRCMD_QUEUE_EN ;
 int IXGBE_FDIRCMD_RX_QUEUE_SHIFT ;
 int IXGBE_FDIRCMD_TUNNEL_FILTER ;
 int IXGBE_FDIRCMD_VT_POOL_SHIFT ;
 int IXGBE_FDIRHASH ;
 int IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT ;
 int IXGBE_FDIRIPDA ;
 int IXGBE_FDIRIPSA ;
 int IXGBE_FDIRPORT ;
 int IXGBE_FDIRPORT_DESTINATION_SHIFT ;
 int IXGBE_FDIRSIPv6 (int) ;
 int IXGBE_FDIRVLAN ;
 int IXGBE_FDIRVLAN_FLEX_SHIFT ;
 scalar_t__ IXGBE_FDIR_DROP_QUEUE ;
 int IXGBE_NTOHS (int ) ;
 int IXGBE_STORE_AS_BE16 (int ) ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int IXGBE_WRITE_REG_BE32 (struct ixgbe_hw*,int ,int) ;
 int UNREFERENCED_1PARAMETER (int) ;
 scalar_t__ ixgbe_fdir_check_cmd_complete (struct ixgbe_hw*,int*) ;

s32 ixgbe_fdir_write_perfect_filter_82599(struct ixgbe_hw *hw,
       union ixgbe_atr_input *input,
       u16 soft_id, u8 queue, bool cloud_mode)
{
 u32 fdirport, fdirvlan, fdirhash, fdircmd;
 u32 addr_low, addr_high;
 u32 cloud_type = 0;
 s32 err;
 UNREFERENCED_1PARAMETER(cloud_mode);

 DEBUGFUNC("ixgbe_fdir_write_perfect_filter_82599");
 if (!cloud_mode) {

  IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRSIPv6(0),
         input->formatted.src_ip[0]);
  IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRSIPv6(1),
         input->formatted.src_ip[1]);
  IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRSIPv6(2),
         input->formatted.src_ip[2]);


  IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRIPSA,
   input->formatted.src_ip[0]);



  IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRIPDA,
   input->formatted.dst_ip[0]);


  fdirport = IXGBE_NTOHS(input->formatted.dst_port);
  fdirport <<= IXGBE_FDIRPORT_DESTINATION_SHIFT;
  fdirport |= IXGBE_NTOHS(input->formatted.src_port);
  IXGBE_WRITE_REG(hw, IXGBE_FDIRPORT, fdirport);
 }


 fdirvlan = IXGBE_STORE_AS_BE16(input->formatted.flex_bytes);
 fdirvlan <<= IXGBE_FDIRVLAN_FLEX_SHIFT;
 fdirvlan |= IXGBE_NTOHS(input->formatted.vlan_id);
 IXGBE_WRITE_REG(hw, IXGBE_FDIRVLAN, fdirvlan);

 if (cloud_mode) {
  if (input->formatted.tunnel_type != 0)
   cloud_type = 0x80000000;

  addr_low = ((u32)input->formatted.inner_mac[0] |
    ((u32)input->formatted.inner_mac[1] << 8) |
    ((u32)input->formatted.inner_mac[2] << 16) |
    ((u32)input->formatted.inner_mac[3] << 24));
  addr_high = ((u32)input->formatted.inner_mac[4] |
    ((u32)input->formatted.inner_mac[5] << 8));
  cloud_type |= addr_high;
  IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRSIPv6(0), addr_low);
  IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRSIPv6(1), cloud_type);
  IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRSIPv6(2), input->formatted.tni_vni);
 }


 fdirhash = input->formatted.bkt_hash;
 fdirhash |= soft_id << IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT;
 IXGBE_WRITE_REG(hw, IXGBE_FDIRHASH, fdirhash);





 IXGBE_WRITE_FLUSH(hw);


 fdircmd = IXGBE_FDIRCMD_CMD_ADD_FLOW | IXGBE_FDIRCMD_FILTER_UPDATE |
    IXGBE_FDIRCMD_LAST | IXGBE_FDIRCMD_QUEUE_EN;
 if (queue == IXGBE_FDIR_DROP_QUEUE)
  fdircmd |= IXGBE_FDIRCMD_DROP;
 if (input->formatted.flow_type & IXGBE_ATR_L4TYPE_TUNNEL_MASK)
  fdircmd |= IXGBE_FDIRCMD_TUNNEL_FILTER;
 fdircmd |= input->formatted.flow_type << IXGBE_FDIRCMD_FLOW_TYPE_SHIFT;
 fdircmd |= (u32)queue << IXGBE_FDIRCMD_RX_QUEUE_SHIFT;
 fdircmd |= (u32)input->formatted.vm_pool << IXGBE_FDIRCMD_VT_POOL_SHIFT;

 IXGBE_WRITE_REG(hw, IXGBE_FDIRCMD, fdircmd);
 err = ixgbe_fdir_check_cmd_complete(hw, &fdircmd);
 if (err) {
  DEBUGOUT("Flow Director command did not complete!\n");
  return err;
 }

 return IXGBE_SUCCESS;
}
