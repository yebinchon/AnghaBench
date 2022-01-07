
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ autoneg; int tx_pause; int rx_pause; int speed; int lp_advertising; scalar_t__ pause_autoneg; } ;
struct xgbe_prv_data {int speed_set; TYPE_1__ phy; scalar_t__ parallel_detect; } ;


 int ADVERTISED_10000baseKR_Full ;
 int ADVERTISED_1000baseKX_Full ;
 int ADVERTISED_2500baseX_Full ;
 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_Backplane ;
 int ADVERTISED_Pause ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ MDIO_AN_ADVERTISE ;
 scalar_t__ MDIO_AN_LPA ;
 int MDIO_MMD_AN ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SPEED_2500 ;
 int SPEED_UNKNOWN ;
 int XGBE_MODE_KR ;
 int XGBE_MODE_KX ;


 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,scalar_t__) ;
 void xgbe_phy_status_force (struct xgbe_prv_data*) ;
 int xgbe_set_mode (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static void xgbe_phy_status_aneg(struct xgbe_prv_data *pdata)
{
 unsigned int ad_reg, lp_reg;

 pdata->phy.lp_advertising = 0;

 if ((pdata->phy.autoneg != AUTONEG_ENABLE) || pdata->parallel_detect)
  return xgbe_phy_status_force(pdata);

 pdata->phy.lp_advertising |= ADVERTISED_Autoneg;
 pdata->phy.lp_advertising |= ADVERTISED_Backplane;


 ad_reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE);
 lp_reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_LPA);
 if (lp_reg & 0x400)
  pdata->phy.lp_advertising |= ADVERTISED_Pause;
 if (lp_reg & 0x800)
  pdata->phy.lp_advertising |= ADVERTISED_Asym_Pause;

 if (pdata->phy.pause_autoneg) {

  pdata->phy.tx_pause = 0;
  pdata->phy.rx_pause = 0;

  if (ad_reg & lp_reg & 0x400) {
   pdata->phy.tx_pause = 1;
   pdata->phy.rx_pause = 1;
  } else if (ad_reg & lp_reg & 0x800) {
   if (ad_reg & 0x400)
    pdata->phy.rx_pause = 1;
   else if (lp_reg & 0x400)
    pdata->phy.tx_pause = 1;
  }
 }


 ad_reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE + 1);
 lp_reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_LPA + 1);
 if (lp_reg & 0x80)
  pdata->phy.lp_advertising |= ADVERTISED_10000baseKR_Full;
 if (lp_reg & 0x20) {
  switch (pdata->speed_set) {
  case 129:
   pdata->phy.lp_advertising |= ADVERTISED_1000baseKX_Full;
   break;
  case 128:
   pdata->phy.lp_advertising |= ADVERTISED_2500baseX_Full;
   break;
  }
 }

 ad_reg &= lp_reg;
 if (ad_reg & 0x80) {
  pdata->phy.speed = SPEED_10000;
  xgbe_set_mode(pdata, XGBE_MODE_KR);
 } else if (ad_reg & 0x20) {
  switch (pdata->speed_set) {
  case 129:
   pdata->phy.speed = SPEED_1000;
   break;

  case 128:
   pdata->phy.speed = SPEED_2500;
   break;
  }

  xgbe_set_mode(pdata, XGBE_MODE_KX);
 } else {
  pdata->phy.speed = SPEED_UNKNOWN;
 }


 ad_reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE + 2);
 lp_reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_LPA + 2);
}
