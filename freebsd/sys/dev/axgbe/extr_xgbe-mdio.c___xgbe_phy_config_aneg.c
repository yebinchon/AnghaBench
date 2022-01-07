
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ autoneg; int advertising; } ;
struct xgbe_prv_data {void* kx_state; void* kr_state; void* an_state; void* an_result; TYPE_1__ phy; int link_check; int dev_state; } ;


 int ADVERTISED_10000baseKR_Full ;
 int ADVERTISED_1000baseKX_Full ;
 int ADVERTISED_2500baseX_Full ;
 scalar_t__ AUTONEG_ENABLE ;
 int EINVAL ;
 int MDIO_AN_INT ;
 int MDIO_AN_INTMASK ;
 int MDIO_MMD_AN ;
 void* XGBE_AN_READY ;
 int XGBE_LINK_INIT ;
 int XGBE_MODE_KR ;
 int XGBE_MODE_KX ;
 void* XGBE_RX_BPA ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,int) ;
 int set_bit (int ,int *) ;
 int ticks ;
 int xgbe_an_init (struct xgbe_prv_data*) ;
 int xgbe_disable_an (struct xgbe_prv_data*) ;
 int xgbe_phy_config_fixed (struct xgbe_prv_data*) ;
 int xgbe_restart_an (struct xgbe_prv_data*) ;
 int xgbe_set_mode (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static int __xgbe_phy_config_aneg(struct xgbe_prv_data *pdata)
{
 set_bit(XGBE_LINK_INIT, &pdata->dev_state);
 pdata->link_check = ticks;

 if (pdata->phy.autoneg != AUTONEG_ENABLE)
  return xgbe_phy_config_fixed(pdata);


 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INTMASK, 0);


 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INT, 0);


 if (pdata->phy.advertising & ADVERTISED_10000baseKR_Full) {
  xgbe_set_mode(pdata, XGBE_MODE_KR);
 } else if ((pdata->phy.advertising & ADVERTISED_1000baseKX_Full) ||
     (pdata->phy.advertising & ADVERTISED_2500baseX_Full)) {
  xgbe_set_mode(pdata, XGBE_MODE_KX);
 } else {
  XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INTMASK, 0x07);
  return -EINVAL;
 }


 xgbe_disable_an(pdata);


 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INT, 0);

 pdata->an_result = XGBE_AN_READY;
 pdata->an_state = XGBE_AN_READY;
 pdata->kr_state = XGBE_RX_BPA;
 pdata->kx_state = XGBE_RX_BPA;


 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INTMASK, 0x07);


 xgbe_an_init(pdata);


 xgbe_restart_an(pdata);

 return 0;
}
