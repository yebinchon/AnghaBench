
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_desc_if {int (* free_ring_resources ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int dev_state; struct xgbe_desc_if desc_if; } ;
struct ifnet {struct xgbe_prv_data* if_softc; } ;


 int DBGPR (char*) ;
 int XGBE_DOWN ;
 int set_bit (int ,int *) ;
 int stub1 (struct xgbe_prv_data*) ;
 int xgbe_free_channels (struct xgbe_prv_data*) ;
 int xgbe_stop (struct xgbe_prv_data*) ;

int xgbe_close(struct ifnet *netdev)
{
 struct xgbe_prv_data *pdata = netdev->if_softc;
 struct xgbe_desc_if *desc_if = &pdata->desc_if;

 DBGPR("-->xgbe_close\n");


 xgbe_stop(pdata);


 desc_if->free_ring_resources(pdata);


 xgbe_free_channels(pdata);

 set_bit(XGBE_DOWN, &pdata->dev_state);

 DBGPR("<--xgbe_close\n");

 return 0;
}
