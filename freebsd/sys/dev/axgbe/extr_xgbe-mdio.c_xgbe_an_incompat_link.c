
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int advertising; } ;
struct xgbe_prv_data {scalar_t__ kr_state; scalar_t__ kx_state; TYPE_1__ phy; } ;
typedef enum xgbe_an { ____Placeholder_xgbe_an } xgbe_an ;


 int ADVERTISED_10000baseKR_Full ;
 int ADVERTISED_1000baseKX_Full ;
 int ADVERTISED_2500baseX_Full ;
 int XGBE_AN_INCOMPAT_LINK ;
 int XGBE_AN_NO_LINK ;
 scalar_t__ XGBE_RX_BPA ;
 void* XGBE_RX_ERROR ;
 int xgbe_disable_an (struct xgbe_prv_data*) ;
 scalar_t__ xgbe_in_kr_mode (struct xgbe_prv_data*) ;
 int xgbe_restart_an (struct xgbe_prv_data*) ;
 int xgbe_switch_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static enum xgbe_an xgbe_an_incompat_link(struct xgbe_prv_data *pdata)
{

 if (xgbe_in_kr_mode(pdata)) {
  pdata->kr_state = XGBE_RX_ERROR;

  if (!(pdata->phy.advertising & ADVERTISED_1000baseKX_Full) &&
      !(pdata->phy.advertising & ADVERTISED_2500baseX_Full))
   return XGBE_AN_NO_LINK;

  if (pdata->kx_state != XGBE_RX_BPA)
   return XGBE_AN_NO_LINK;
 } else {
  pdata->kx_state = XGBE_RX_ERROR;

  if (!(pdata->phy.advertising & ADVERTISED_10000baseKR_Full))
   return XGBE_AN_NO_LINK;

  if (pdata->kr_state != XGBE_RX_BPA)
   return XGBE_AN_NO_LINK;
 }

 xgbe_disable_an(pdata);

 xgbe_switch_mode(pdata);

 xgbe_restart_an(pdata);

 return XGBE_AN_INCOMPAT_LINK;
}
