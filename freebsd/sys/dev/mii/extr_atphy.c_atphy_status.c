
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_softc {int mii_ticks; struct mii_data* mii_pdata; } ;
struct mii_data {scalar_t__ mii_media_active; int mii_media_status; } ;


 int ATPHY_SSR ;



 int ATPHY_SSR_DUPLEX ;
 int ATPHY_SSR_SPD_DPLX_RESOLVED ;
 int ATPHY_SSR_SPEED_MASK ;
 int BMCR_ISO ;
 int BMCR_LOOP ;
 int BMSR_LINK ;
 int GTSR_MS_RES ;
 scalar_t__ IFM_1000_T ;
 scalar_t__ IFM_100_TX ;
 scalar_t__ IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 scalar_t__ IFM_ETHER ;
 int IFM_ETH_MASTER ;
 int IFM_FDX ;
 int IFM_HDX ;
 scalar_t__ IFM_LOOP ;
 scalar_t__ IFM_NONE ;
 scalar_t__ IFM_SUBTYPE (int) ;
 int MII_100T2SR ;
 int MII_BMCR ;
 int MII_BMSR ;
 int PHY_READ (struct mii_softc*,int ) ;
 int mii_phy_flowstatus (struct mii_softc*) ;

__attribute__((used)) static void
atphy_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 uint32_t bmsr, bmcr, ssr;

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;

 bmsr = PHY_READ(sc, MII_BMSR) | PHY_READ(sc, MII_BMSR);
 if ((bmsr & BMSR_LINK) != 0)
  mii->mii_media_status |= IFM_ACTIVE;

 bmcr = PHY_READ(sc, MII_BMCR);
 if ((bmcr & BMCR_ISO) != 0) {
  mii->mii_media_active |= IFM_NONE;
  mii->mii_media_status = 0;
  return;
 }

 if ((bmcr & BMCR_LOOP) != 0)
  mii->mii_media_active |= IFM_LOOP;

 ssr = PHY_READ(sc, ATPHY_SSR);
 if ((ssr & ATPHY_SSR_SPD_DPLX_RESOLVED) == 0) {

  mii->mii_media_active |= IFM_NONE;
  return;
 }

 switch (ssr & ATPHY_SSR_SPEED_MASK) {
 case 130:
  mii->mii_media_active |= IFM_1000_T;





  sc->mii_ticks = 0;
  break;
 case 129:
  mii->mii_media_active |= IFM_100_TX;
  sc->mii_ticks = 0;
  break;
 case 128:
  mii->mii_media_active |= IFM_10_T;
  sc->mii_ticks = 0;
  break;
 default:
  mii->mii_media_active |= IFM_NONE;
  return;
 }

 if ((ssr & ATPHY_SSR_DUPLEX) != 0)
  mii->mii_media_active |= IFM_FDX | mii_phy_flowstatus(sc);
 else
  mii->mii_media_active |= IFM_HDX;

 if ((IFM_SUBTYPE(mii->mii_media_active) == IFM_1000_T) &&
     (PHY_READ(sc, MII_100T2SR) & GTSR_MS_RES) != 0)
  mii->mii_media_active |= IFM_ETH_MASTER;
}
