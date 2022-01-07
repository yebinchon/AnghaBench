
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int xgbe_add_mac_addresses (struct xgbe_prv_data*) ;
 int xgbe_set_all_multicast_mode (struct xgbe_prv_data*,unsigned int) ;
 int xgbe_set_promiscuous_mode (struct xgbe_prv_data*,unsigned int) ;

__attribute__((used)) static int xgbe_config_rx_mode(struct xgbe_prv_data *pdata)
{
 unsigned int pr_mode, am_mode;


 pr_mode = 0;
 am_mode = 0;

 xgbe_set_promiscuous_mode(pdata, pr_mode);
 xgbe_set_all_multicast_mode(pdata, am_mode);

 xgbe_add_mac_addresses(pdata);

 return 0;
}
