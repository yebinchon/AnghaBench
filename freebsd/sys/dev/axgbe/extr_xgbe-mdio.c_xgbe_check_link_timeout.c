
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned long link_check; } ;


 unsigned long XGBE_LINK_TIMEOUT ;
 unsigned long hz ;
 unsigned long ticks ;
 int xgbe_phy_config_aneg (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_check_link_timeout(struct xgbe_prv_data *pdata)
{
 unsigned long link_timeout;

 link_timeout = pdata->link_check + (XGBE_LINK_TIMEOUT * hz);
 if ((int)(ticks - link_timeout) >= 0) {
  xgbe_phy_config_aneg(pdata);
 }
}
