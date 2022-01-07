
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_SUCCESS ;
 int UNREFERENCED_1PARAMETER (int) ;
 int ixgbe_dcb_config_rx_arbiter_82599 (struct ixgbe_hw*,int *,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tx_data_arbiter_82599 (struct ixgbe_hw*,int *,int *,int *,int *,int *) ;
 int ixgbe_dcb_config_tx_desc_arbiter_82599 (struct ixgbe_hw*,int *,int *,int *,int *) ;

s32 ixgbe_dcb_hw_config_82599(struct ixgbe_hw *hw, int link_speed,
         u16 *refill, u16 *max, u8 *bwg_id, u8 *tsa,
         u8 *map)
{
 UNREFERENCED_1PARAMETER(link_speed);

 ixgbe_dcb_config_rx_arbiter_82599(hw, refill, max, bwg_id, tsa,
       map);
 ixgbe_dcb_config_tx_desc_arbiter_82599(hw, refill, max, bwg_id,
            tsa);
 ixgbe_dcb_config_tx_data_arbiter_82599(hw, refill, max, bwg_id,
            tsa, map);

 return IXGBE_SUCCESS;
}
