
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int CSVL ;
 int MAC_VLANIR ;
 int VLTI ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 int xgbe_disable_rx_vlan_filtering (struct xgbe_prv_data*) ;
 int xgbe_disable_rx_vlan_stripping (struct xgbe_prv_data*) ;
 int xgbe_update_vlan_hash_table (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_config_vlan_support(struct xgbe_prv_data *pdata)
{

 XGMAC_IOWRITE_BITS(pdata, MAC_VLANIR, CSVL, 0);
 XGMAC_IOWRITE_BITS(pdata, MAC_VLANIR, VLTI, 1);


 xgbe_update_vlan_hash_table(pdata);

 xgbe_disable_rx_vlan_filtering(pdata);
 xgbe_disable_rx_vlan_stripping(pdata);
}
