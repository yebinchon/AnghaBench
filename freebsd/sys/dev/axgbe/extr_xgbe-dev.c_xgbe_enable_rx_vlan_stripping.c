
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int DOVLTC ;
 int ERSVLM ;
 int ESVL ;
 int EVLRXS ;
 int EVLS ;
 int MAC_VLANTR ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;

__attribute__((used)) static int xgbe_enable_rx_vlan_stripping(struct xgbe_prv_data *pdata)
{

 XGMAC_IOWRITE_BITS(pdata, MAC_VLANTR, EVLRXS, 1);


 XGMAC_IOWRITE_BITS(pdata, MAC_VLANTR, DOVLTC, 1);


 XGMAC_IOWRITE_BITS(pdata, MAC_VLANTR, ERSVLM, 0);


 XGMAC_IOWRITE_BITS(pdata, MAC_VLANTR, ESVL, 0);


 XGMAC_IOWRITE_BITS(pdata, MAC_VLANTR, EVLS, 0x3);

 return 0;
}
