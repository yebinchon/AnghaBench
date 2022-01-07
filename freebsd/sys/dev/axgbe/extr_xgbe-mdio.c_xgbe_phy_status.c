
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; scalar_t__ autoneg; } ;
struct xgbe_prv_data {int dev_state; TYPE_1__ phy; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int MDIO_MMD_PCS ;
 int MDIO_STAT1 ;
 unsigned int MDIO_STAT1_LSTATUS ;
 int XGBE_LINK_ERR ;
 int XGBE_LINK_INIT ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int xgbe_check_link_timeout (struct xgbe_prv_data*) ;
 int xgbe_phy_adjust_link (struct xgbe_prv_data*) ;
 int xgbe_phy_aneg_done (struct xgbe_prv_data*) ;
 int xgbe_phy_status_aneg (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_status(struct xgbe_prv_data *pdata)
{
 unsigned int reg, link_aneg;

 if (test_bit(XGBE_LINK_ERR, &pdata->dev_state)) {
  pdata->phy.link = 0;
  goto adjust_link;
 }

 link_aneg = (pdata->phy.autoneg == AUTONEG_ENABLE);




 reg = XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_STAT1);
 reg = XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_STAT1);
 pdata->phy.link = (reg & MDIO_STAT1_LSTATUS) ? 1 : 0;

 if (pdata->phy.link) {
  if (link_aneg && !xgbe_phy_aneg_done(pdata)) {
   xgbe_check_link_timeout(pdata);
   return;
  }

  xgbe_phy_status_aneg(pdata);

  if (test_bit(XGBE_LINK_INIT, &pdata->dev_state))
   clear_bit(XGBE_LINK_INIT, &pdata->dev_state);
 } else {
  if (test_bit(XGBE_LINK_INIT, &pdata->dev_state)) {
   xgbe_check_link_timeout(pdata);

   if (link_aneg)
    return;
  }

  xgbe_phy_status_aneg(pdata);
 }

adjust_link:
 xgbe_phy_adjust_link(pdata);
}
