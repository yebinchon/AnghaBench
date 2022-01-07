
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {scalar_t__ speed_set; } ;


 scalar_t__ XGBE_SPEEDSET_1000_10000 ;
 int xgbe_gmii_2500_mode (struct xgbe_prv_data*) ;
 int xgbe_gmii_mode (struct xgbe_prv_data*) ;
 scalar_t__ xgbe_in_kr_mode (struct xgbe_prv_data*) ;
 int xgbe_xgmii_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_switch_mode(struct xgbe_prv_data *pdata)
{

 if (xgbe_in_kr_mode(pdata)) {
  if (pdata->speed_set == XGBE_SPEEDSET_1000_10000)
   xgbe_gmii_mode(pdata);
  else
   xgbe_gmii_2500_mode(pdata);
 } else {
  xgbe_xgmii_mode(pdata);
 }
}
