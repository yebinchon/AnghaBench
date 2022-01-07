
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int addn_mac; } ;
struct xgbe_prv_data {int * mac_addr; TYPE_1__ hw_feat; } ;


 unsigned int MAC_MACA1HR ;
 int xgbe_set_mac_reg (struct xgbe_prv_data*,int *,unsigned int*) ;

__attribute__((used)) static void xgbe_set_mac_addn_addrs(struct xgbe_prv_data *pdata)
{
 unsigned int mac_reg;
 unsigned int addn_macs;

 mac_reg = MAC_MACA1HR;
 addn_macs = pdata->hw_feat.addn_mac;

 xgbe_set_mac_reg(pdata, pdata->mac_addr, &mac_reg);
 addn_macs--;


 while (addn_macs--)
  xgbe_set_mac_reg(pdata, ((void*)0), &mac_reg);
}
