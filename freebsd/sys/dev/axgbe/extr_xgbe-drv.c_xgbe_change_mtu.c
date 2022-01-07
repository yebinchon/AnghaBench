
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int rx_buf_size; } ;
struct ifnet {int if_mtu; struct xgbe_prv_data* if_softc; } ;


 int DBGPR (char*) ;
 int xgbe_calc_rx_buf_size (struct ifnet*,int) ;
 int xgbe_restart_dev (struct xgbe_prv_data*) ;

int xgbe_change_mtu(struct ifnet *netdev, int mtu)
{
 struct xgbe_prv_data *pdata = netdev->if_softc;
 int ret;

 DBGPR("-->xgbe_change_mtu\n");

 ret = xgbe_calc_rx_buf_size(netdev, mtu);
 if (ret < 0)
  return -ret;

 pdata->rx_buf_size = ret;
 netdev->if_mtu = mtu;

 xgbe_restart_dev(pdata);

 DBGPR("<--xgbe_change_mtu\n");

 return 0;
}
