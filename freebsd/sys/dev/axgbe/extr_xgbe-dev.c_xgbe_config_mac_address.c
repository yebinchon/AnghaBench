
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; } ;


 int IF_LLADDR (int ) ;
 int xgbe_set_mac_address (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static void xgbe_config_mac_address(struct xgbe_prv_data *pdata)
{

 xgbe_set_mac_address(pdata, IF_LLADDR(pdata->netdev));
}
