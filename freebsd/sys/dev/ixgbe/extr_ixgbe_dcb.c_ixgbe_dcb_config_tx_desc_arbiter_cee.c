
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_dcb_config {int dummy; } ;
typedef int s32 ;


 int IXGBE_DCB_MAX_TRAFFIC_CLASS ;
 int IXGBE_DCB_TX_CONFIG ;
 int IXGBE_NOT_IMPLEMENTED ;
 int ixgbe_dcb_config_tx_desc_arbiter_82598 (struct ixgbe_hw*,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tx_desc_arbiter_82599 (struct ixgbe_hw*,int *,int *,int *,int *) ;
 int ixgbe_dcb_unpack_bwgid_cee (struct ixgbe_dcb_config*,int ,int *) ;
 int ixgbe_dcb_unpack_max_cee (struct ixgbe_dcb_config*,int *) ;
 int ixgbe_dcb_unpack_refill_cee (struct ixgbe_dcb_config*,int ,int *) ;
 int ixgbe_dcb_unpack_tsa_cee (struct ixgbe_dcb_config*,int ,int *) ;







s32 ixgbe_dcb_config_tx_desc_arbiter_cee(struct ixgbe_hw *hw,
         struct ixgbe_dcb_config *dcb_config)
{
 s32 ret = IXGBE_NOT_IMPLEMENTED;
 u8 tsa[IXGBE_DCB_MAX_TRAFFIC_CLASS];
 u8 bwgid[IXGBE_DCB_MAX_TRAFFIC_CLASS];
 u16 refill[IXGBE_DCB_MAX_TRAFFIC_CLASS];
 u16 max[IXGBE_DCB_MAX_TRAFFIC_CLASS];

 ixgbe_dcb_unpack_refill_cee(dcb_config, IXGBE_DCB_TX_CONFIG, refill);
 ixgbe_dcb_unpack_max_cee(dcb_config, max);
 ixgbe_dcb_unpack_bwgid_cee(dcb_config, IXGBE_DCB_TX_CONFIG, bwgid);
 ixgbe_dcb_unpack_tsa_cee(dcb_config, IXGBE_DCB_TX_CONFIG, tsa);

 switch (hw->mac.type) {
 case 133:
  ret = ixgbe_dcb_config_tx_desc_arbiter_82598(hw, refill, max,
            bwgid, tsa);
  break;
 case 132:
 case 131:
 case 130:
 case 128:
 case 129:

  ret = ixgbe_dcb_config_tx_desc_arbiter_82599(hw, refill, max,
            bwgid, tsa);
  break;

 default:
  break;
 }
 return ret;
}
