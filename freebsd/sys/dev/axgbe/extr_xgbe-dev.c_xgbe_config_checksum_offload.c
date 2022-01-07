
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; } ;


 int IFCAP_RXCSUM ;
 int if_getcapenable (int ) ;
 int xgbe_disable_rx_csum (struct xgbe_prv_data*) ;
 int xgbe_enable_rx_csum (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_config_checksum_offload(struct xgbe_prv_data *pdata)
{
 if ((if_getcapenable(pdata->netdev) & IFCAP_RXCSUM) != 0)
  xgbe_enable_rx_csum(pdata);
 else
  xgbe_disable_rx_csum(pdata);
}
