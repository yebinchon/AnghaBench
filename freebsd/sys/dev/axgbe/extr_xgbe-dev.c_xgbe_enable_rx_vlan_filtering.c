
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int ETV ;
 int MAC_PFR ;
 int MAC_VLANTR ;
 int VL ;
 int VTFE ;
 int VTHM ;
 int VTIM ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;

__attribute__((used)) static int xgbe_enable_rx_vlan_filtering(struct xgbe_prv_data *pdata)
{

 XGMAC_IOWRITE_BITS(pdata, MAC_PFR, VTFE, 1);


 XGMAC_IOWRITE_BITS(pdata, MAC_VLANTR, VTHM, 1);


 XGMAC_IOWRITE_BITS(pdata, MAC_VLANTR, VTIM, 0);


 XGMAC_IOWRITE_BITS(pdata, MAC_VLANTR, ETV, 1);







 XGMAC_IOWRITE_BITS(pdata, MAC_VLANTR, VL, 1);

 return 0;
}
