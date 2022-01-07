
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int xgbe_set_mac_addn_addrs (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_add_mac_addresses(struct xgbe_prv_data *pdata)
{
 xgbe_set_mac_addn_addrs(pdata);

 return 0;
}
