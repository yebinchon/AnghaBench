
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {TYPE_1__* netdev; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int DBGPR (char*) ;
 int IFF_DRV_RUNNING ;
 int xgbe_free_rx_data (struct xgbe_prv_data*) ;
 int xgbe_free_tx_data (struct xgbe_prv_data*) ;
 int xgbe_start (struct xgbe_prv_data*) ;
 int xgbe_stop (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_restart_dev(struct xgbe_prv_data *pdata)
{
 DBGPR("-->xgbe_restart_dev\n");


 if ((pdata->netdev->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 xgbe_stop(pdata);

 xgbe_free_tx_data(pdata);
 xgbe_free_rx_data(pdata);

 xgbe_start(pdata);

 DBGPR("<--xgbe_restart_dev\n");
}
