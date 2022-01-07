
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {scalar_t__ rx_pause; } ;


 int xgbe_disable_rx_flow_control (struct xgbe_prv_data*) ;
 int xgbe_enable_rx_flow_control (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_config_rx_flow_control(struct xgbe_prv_data *pdata)
{

 if (pdata->rx_pause)
  xgbe_enable_rx_flow_control(pdata);
 else
  xgbe_disable_rx_flow_control(pdata);

 return 0;
}
