
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_if {int (* phy_start ) (struct xgbe_prv_data*) ;int (* phy_stop ) (struct xgbe_prv_data*) ;} ;
struct xgbe_hw_if {int (* exit ) (struct xgbe_prv_data*) ;int (* enable_rx ) (struct xgbe_prv_data*) ;int (* enable_tx ) (struct xgbe_prv_data*) ;int (* init ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int service_work; int dev_workqueue; struct xgbe_phy_if phy_if; struct xgbe_hw_if hw_if; } ;


 int DBGPR (char*) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*) ;
 int stub3 (struct xgbe_prv_data*) ;
 int stub4 (struct xgbe_prv_data*) ;
 int stub5 (struct xgbe_prv_data*) ;
 int stub6 (struct xgbe_prv_data*) ;
 int taskqueue_enqueue (int ,int *) ;
 int xgbe_enable_rx_tx_ints (struct xgbe_prv_data*) ;
 int xgbe_request_irqs (struct xgbe_prv_data*) ;
 int xgbe_start_timers (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_start(struct xgbe_prv_data *pdata)
{
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 struct xgbe_phy_if *phy_if = &pdata->phy_if;
 int ret;

 DBGPR("-->xgbe_start\n");

 hw_if->init(pdata);

 ret = phy_if->phy_start(pdata);
 if (ret)
  goto err_phy;

 ret = xgbe_request_irqs(pdata);
 if (ret)
  goto err_napi;

 hw_if->enable_tx(pdata);
 hw_if->enable_rx(pdata);

 xgbe_enable_rx_tx_ints(pdata);

 xgbe_start_timers(pdata);
 taskqueue_enqueue(pdata->dev_workqueue, &pdata->service_work);

 DBGPR("<--xgbe_start\n");

 return 0;

err_napi:
 phy_if->phy_stop(pdata);

err_phy:
 hw_if->exit(pdata);

 return ret;
}
