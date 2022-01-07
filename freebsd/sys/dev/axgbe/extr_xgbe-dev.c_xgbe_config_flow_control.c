
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int MAC_RFCR ;
 int PFCE ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;
 int xgbe_config_rx_flow_control (struct xgbe_prv_data*) ;
 int xgbe_config_tx_flow_control (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_config_flow_control(struct xgbe_prv_data *pdata)
{

 xgbe_config_tx_flow_control(pdata);
 xgbe_config_rx_flow_control(pdata);

 XGMAC_IOWRITE_BITS(pdata, MAC_RFCR, PFCE, 0);
}
