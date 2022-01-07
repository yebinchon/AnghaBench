
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int ixgbe_dcb_config_rx_arbiter_82598 (struct ixgbe_hw*,int *,int *,int *) ;
 int ixgbe_dcb_config_rx_arbiter_82599 (struct ixgbe_hw*,int *,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tx_data_arbiter_82598 (struct ixgbe_hw*,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tx_data_arbiter_82599 (struct ixgbe_hw*,int *,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tx_desc_arbiter_82598 (struct ixgbe_hw*,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tx_desc_arbiter_82599 (struct ixgbe_hw*,int *,int *,int *,int *) ;







s32 ixgbe_dcb_hw_config(struct ixgbe_hw *hw, u16 *refill, u16 *max,
       u8 *bwg_id, u8 *tsa, u8 *map)
{
 switch (hw->mac.type) {
 case 133:
  ixgbe_dcb_config_rx_arbiter_82598(hw, refill, max, tsa);
  ixgbe_dcb_config_tx_desc_arbiter_82598(hw, refill, max, bwg_id,
             tsa);
  ixgbe_dcb_config_tx_data_arbiter_82598(hw, refill, max, bwg_id,
             tsa);
  break;
 case 132:
 case 131:
 case 130:
 case 128:
 case 129:

  ixgbe_dcb_config_rx_arbiter_82599(hw, refill, max, bwg_id,
        tsa, map);
  ixgbe_dcb_config_tx_desc_arbiter_82599(hw, refill, max, bwg_id,
             tsa);
  ixgbe_dcb_config_tx_data_arbiter_82599(hw, refill, max, bwg_id,
             tsa, map);
  break;

 default:
  break;
 }
 return 0;
}
