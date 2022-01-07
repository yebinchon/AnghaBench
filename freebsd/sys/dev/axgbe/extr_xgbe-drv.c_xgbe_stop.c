
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_if {int (* phy_stop ) (struct xgbe_prv_data*) ;} ;
struct xgbe_hw_if {int (* exit ) (struct xgbe_prv_data*) ;int (* disable_rx ) (struct xgbe_prv_data*) ;int (* disable_tx ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int dev_workqueue; struct xgbe_phy_if phy_if; struct xgbe_hw_if hw_if; } ;


 int DBGPR (char*) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*) ;
 int stub3 (struct xgbe_prv_data*) ;
 int stub4 (struct xgbe_prv_data*) ;
 int taskqueue_drain_all (int ) ;
 int xgbe_free_irqs (struct xgbe_prv_data*) ;
 int xgbe_stop_timers (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_stop(struct xgbe_prv_data *pdata)
{
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 struct xgbe_phy_if *phy_if = &pdata->phy_if;

 DBGPR("-->xgbe_stop\n");

 xgbe_stop_timers(pdata);
 taskqueue_drain_all(pdata->dev_workqueue);

 hw_if->disable_tx(pdata);
 hw_if->disable_rx(pdata);

 xgbe_free_irqs(pdata);

 phy_if->phy_stop(pdata);

 hw_if->exit(pdata);

 DBGPR("<--xgbe_stop\n");
}
