
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_desc_if {int (* alloc_ring_resources ) (struct xgbe_prv_data*) ;int (* free_ring_resources ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int rx_buf_size; int dev_state; int restart_work; int service_work; struct xgbe_desc_if desc_if; } ;
struct ifnet {struct xgbe_prv_data* if_softc; } ;


 int DBGPR (char*) ;
 int TASK_INIT (int *,int ,int ,struct xgbe_prv_data*) ;
 int XGBE_DOWN ;
 int clear_bit (int ,int *) ;
 int if_getmtu (struct ifnet*) ;
 int printf (char*) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*) ;
 int xgbe_alloc_channels (struct xgbe_prv_data*) ;
 int xgbe_calc_rx_buf_size (struct ifnet*,int ) ;
 int xgbe_free_channels (struct xgbe_prv_data*) ;
 int xgbe_init_timers (struct xgbe_prv_data*) ;
 int xgbe_phy_init (struct xgbe_prv_data*) ;
 int xgbe_restart ;
 int xgbe_service ;
 int xgbe_start (struct xgbe_prv_data*) ;

int xgbe_open(struct ifnet *netdev)
{
 struct xgbe_prv_data *pdata = netdev->if_softc;
 struct xgbe_desc_if *desc_if = &pdata->desc_if;
 int ret;

 DBGPR("-->xgbe_open\n");


 ret = xgbe_phy_init(pdata);
 if (ret)
  return ret;


 ret = xgbe_calc_rx_buf_size(netdev, if_getmtu(netdev));
 if (ret < 0) {
  goto err_ptpclk;
 }
 pdata->rx_buf_size = ret;


 ret = xgbe_alloc_channels(pdata);
 if (ret) {
  printf("xgbe_alloc_channels failed\n");
  goto err_ptpclk;
 }


 ret = desc_if->alloc_ring_resources(pdata);
 if (ret) {
  printf("desc_if->alloc_ring_resources failed\n");
  goto err_channels;
 }

 TASK_INIT(&pdata->service_work, 0, xgbe_service, pdata);
 TASK_INIT(&pdata->restart_work, 0, xgbe_restart, pdata);
 xgbe_init_timers(pdata);

 ret = xgbe_start(pdata);
 if (ret)
  goto err_rings;

 clear_bit(XGBE_DOWN, &pdata->dev_state);

 DBGPR("<--xgbe_open\n");

 return 0;

err_rings:
 desc_if->free_ring_resources(pdata);

err_channels:
 xgbe_free_channels(pdata);

err_ptpclk:

 return ret;
}
