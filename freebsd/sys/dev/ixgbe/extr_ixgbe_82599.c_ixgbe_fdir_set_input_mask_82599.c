
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vm_pool; int flow_type; int flex_bytes; int* inner_mac; int tni_vni; int tunnel_type; int* src_ip; int* dst_ip; int vlan_id; int src_port; int dst_port; scalar_t__ bkt_hash; } ;
union ixgbe_atr_input {TYPE_2__ formatted; } ;
typedef int u32 ;
struct TYPE_3__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;

 int IXGBE_ERR_CONFIG ;
 int IXGBE_FDIRDIP4M ;
 int IXGBE_FDIRIP6M ;
 int IXGBE_FDIRIP6M_ALWAYS_MASK ;
 int IXGBE_FDIRIP6M_DIPM_SHIFT ;
 int IXGBE_FDIRIP6M_INNER_MAC ;
 int IXGBE_FDIRIP6M_TNI_VNI ;
 int IXGBE_FDIRIP6M_TNI_VNI_24 ;
 int IXGBE_FDIRIP6M_TUNNEL_TYPE ;
 int IXGBE_FDIRM ;
 int IXGBE_FDIRM_DIPv6 ;
 int IXGBE_FDIRM_FLEX ;
 int IXGBE_FDIRM_L3P ;
 int IXGBE_FDIRM_L4P ;
 int IXGBE_FDIRM_POOL ;
 int IXGBE_FDIRM_VLANID ;
 int IXGBE_FDIRM_VLANP ;
 int IXGBE_FDIRSCTPM ;
 int IXGBE_FDIRSIP4M ;
 int IXGBE_FDIRTCPM ;
 int IXGBE_FDIRUDPM ;
 int IXGBE_NTOHS (int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int IXGBE_WRITE_REG_BE32 (struct ixgbe_hw*,int ,int) ;
 int UNREFERENCED_1PARAMETER (int) ;
 int ixgbe_get_fdirtcpm_82599 (union ixgbe_atr_input*) ;




s32 ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
        union ixgbe_atr_input *input_mask, bool cloud_mode)
{

 u32 fdirm = IXGBE_FDIRM_DIPv6;
 u32 fdirtcpm;
 u32 fdirip6m;
 UNREFERENCED_1PARAMETER(cloud_mode);
 DEBUGFUNC("ixgbe_fdir_set_atr_input_mask_82599");
 if (input_mask->formatted.bkt_hash)
  DEBUGOUT(" bucket hash should always be 0 in mask\n");


 switch (input_mask->formatted.vm_pool & 0x7F) {
 case 0x0:
  fdirm |= IXGBE_FDIRM_POOL;
 case 0x7F:
  break;
 default:
  DEBUGOUT(" Error on vm pool mask\n");
  return IXGBE_ERR_CONFIG;
 }

 switch (input_mask->formatted.flow_type & 131) {
 case 0x0:
  fdirm |= IXGBE_FDIRM_L4P;
  if (input_mask->formatted.dst_port ||
      input_mask->formatted.src_port) {
   DEBUGOUT(" Error on src/dst port mask\n");
   return IXGBE_ERR_CONFIG;
  }
 case 131:
  break;
 default:
  DEBUGOUT(" Error on flow type mask\n");
  return IXGBE_ERR_CONFIG;
 }

 switch (IXGBE_NTOHS(input_mask->formatted.vlan_id) & 0xEFFF) {
 case 0x0000:

  fdirm |= IXGBE_FDIRM_VLANID;

 case 0x0FFF:

  fdirm |= IXGBE_FDIRM_VLANP;
  break;
 case 0xE000:

  fdirm |= IXGBE_FDIRM_VLANID;

 case 0xEFFF:

  break;
 default:
  DEBUGOUT(" Error on VLAN mask\n");
  return IXGBE_ERR_CONFIG;
 }

 switch (input_mask->formatted.flex_bytes & 0xFFFF) {
 case 0x0000:

  fdirm |= IXGBE_FDIRM_FLEX;

 case 0xFFFF:
  break;
 default:
  DEBUGOUT(" Error on flexible byte mask\n");
  return IXGBE_ERR_CONFIG;
 }

 if (cloud_mode) {
  fdirm |= IXGBE_FDIRM_L3P;
  fdirip6m = ((u32) 0xFFFFU << IXGBE_FDIRIP6M_DIPM_SHIFT);
  fdirip6m |= IXGBE_FDIRIP6M_ALWAYS_MASK;

  switch (input_mask->formatted.inner_mac[0] & 0xFF) {
  case 0x00:

   fdirip6m |= IXGBE_FDIRIP6M_INNER_MAC;
  case 0xFF:
   break;
  default:
   DEBUGOUT(" Error on inner_mac byte mask\n");
   return IXGBE_ERR_CONFIG;
  }

  switch (input_mask->formatted.tni_vni & 0xFFFFFFFF) {
  case 0x0:

   fdirip6m |= IXGBE_FDIRIP6M_TNI_VNI;
   break;
  case 0x00FFFFFF:
   fdirip6m |= IXGBE_FDIRIP6M_TNI_VNI_24;
   break;
  case 0xFFFFFFFF:
   break;
  default:
   DEBUGOUT(" Error on TNI/VNI byte mask\n");
   return IXGBE_ERR_CONFIG;
  }

  switch (input_mask->formatted.tunnel_type & 0xFFFF) {
  case 0x0:

   fdirip6m |= IXGBE_FDIRIP6M_TUNNEL_TYPE;
  case 0xFFFF:
   break;
  default:
   DEBUGOUT(" Error on tunnel type byte mask\n");
   return IXGBE_ERR_CONFIG;
  }
  IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRIP6M, fdirip6m);





  IXGBE_WRITE_REG(hw, IXGBE_FDIRTCPM, 0xFFFFFFFF);
  IXGBE_WRITE_REG(hw, IXGBE_FDIRUDPM, 0xFFFFFFFF);
  IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRDIP4M, 0xFFFFFFFF);
  IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRSIP4M, 0xFFFFFFFF);
  switch (hw->mac.type) {
  case 130:
  case 128:
  case 129:
   IXGBE_WRITE_REG(hw, IXGBE_FDIRSCTPM, 0xFFFFFFFF);
   break;
  default:
   break;
  }
 }


 IXGBE_WRITE_REG(hw, IXGBE_FDIRM, fdirm);

 if (!cloud_mode) {


  fdirtcpm = ixgbe_get_fdirtcpm_82599(input_mask);


  IXGBE_WRITE_REG(hw, IXGBE_FDIRTCPM, ~fdirtcpm);
  IXGBE_WRITE_REG(hw, IXGBE_FDIRUDPM, ~fdirtcpm);

  switch (hw->mac.type) {
  case 130:
  case 128:
  case 129:
   IXGBE_WRITE_REG(hw, IXGBE_FDIRSCTPM, ~fdirtcpm);
   break;
  default:
   break;
  }


  IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRSIP4M,
         ~input_mask->formatted.src_ip[0]);
  IXGBE_WRITE_REG_BE32(hw, IXGBE_FDIRDIP4M,
         ~input_mask->formatted.dst_ip[0]);
 }
 return IXGBE_SUCCESS;
}
