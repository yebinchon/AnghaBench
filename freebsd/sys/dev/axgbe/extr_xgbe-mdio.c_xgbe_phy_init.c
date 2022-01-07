
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int supported; int advertising; scalar_t__ rx_pause; scalar_t__ tx_pause; int pause_autoneg; scalar_t__ link; int duplex; int speed; int autoneg; scalar_t__ address; } ;
struct xgbe_prv_data {int speed_set; int fec_ability; TYPE_1__ phy; scalar_t__ tx_pause; scalar_t__ rx_pause; int pause_autoneg; int mdio_mmd; int an_mutex; } ;


 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Pause ;
 int AUTONEG_ENABLE ;
 int DUPLEX_UNKNOWN ;
 int MDIO_MMD_PCS ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_10GBR_FECABLE ;
 int MDIO_PMA_10GBR_FECABLE_ABLE ;
 int MDIO_PMA_10GBR_FECABLE_ERRABLE ;
 int SPEED_UNKNOWN ;
 int SUPPORTED_10000baseKR_Full ;
 int SUPPORTED_10000baseR_FEC ;
 int SUPPORTED_1000baseKX_Full ;
 int SUPPORTED_2500baseX_Full ;
 int SUPPORTED_Asym_Pause ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_Backplane ;
 int SUPPORTED_Pause ;


 int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static void xgbe_phy_init(struct xgbe_prv_data *pdata)
{
 sx_init(&pdata->an_mutex, "axgbe AN lock");
 pdata->mdio_mmd = MDIO_MMD_PCS;


 pdata->phy.supported = SUPPORTED_Autoneg;
 pdata->phy.supported |= SUPPORTED_Pause | SUPPORTED_Asym_Pause;
 pdata->phy.supported |= SUPPORTED_Backplane;
 pdata->phy.supported |= SUPPORTED_10000baseKR_Full;
 switch (pdata->speed_set) {
 case 129:
  pdata->phy.supported |= SUPPORTED_1000baseKX_Full;
  break;
 case 128:
  pdata->phy.supported |= SUPPORTED_2500baseX_Full;
  break;
 }

 pdata->fec_ability = XMDIO_READ(pdata, MDIO_MMD_PMAPMD,
     MDIO_PMA_10GBR_FECABLE);
 pdata->fec_ability &= (MDIO_PMA_10GBR_FECABLE_ABLE |
          MDIO_PMA_10GBR_FECABLE_ERRABLE);
 if (pdata->fec_ability & MDIO_PMA_10GBR_FECABLE_ABLE)
  pdata->phy.supported |= SUPPORTED_10000baseR_FEC;

 pdata->phy.advertising = pdata->phy.supported;

 pdata->phy.address = 0;

 pdata->phy.autoneg = AUTONEG_ENABLE;
 pdata->phy.speed = SPEED_UNKNOWN;
 pdata->phy.duplex = DUPLEX_UNKNOWN;

 pdata->phy.link = 0;

 pdata->phy.pause_autoneg = pdata->pause_autoneg;
 pdata->phy.tx_pause = pdata->tx_pause;
 pdata->phy.rx_pause = pdata->rx_pause;


 pdata->phy.advertising &= ~ADVERTISED_Pause;
 pdata->phy.advertising &= ~ADVERTISED_Asym_Pause;

 if (pdata->rx_pause) {
  pdata->phy.advertising |= ADVERTISED_Pause;
  pdata->phy.advertising |= ADVERTISED_Asym_Pause;
 }

 if (pdata->tx_pause)
  pdata->phy.advertising ^= ADVERTISED_Asym_Pause;
}
