
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_softc {int mii_flags; scalar_t__ mii_mpd_rev; struct mii_data* mii_pdata; } ;
struct mii_data {int mii_media_active; int mii_media_status; } ;


 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_ETH_MASTER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_LOOP ;
 int IFM_NONE ;
 int IFM_SUBTYPE (int) ;
 int MIIF_PHYPRIV0 ;
 int MIIF_PHYPRIV1 ;
 int PHY_READ (struct mii_softc*,int ) ;
 int RGEPHY_1000STS_MSR ;
 scalar_t__ RGEPHY_8211B ;
 scalar_t__ RGEPHY_8211F ;
 int RGEPHY_BMCR_AUTOEN ;
 int RGEPHY_BMCR_ISO ;
 int RGEPHY_BMCR_LOOP ;
 int RGEPHY_BMSR_ACOMP ;
 int RGEPHY_F_MII_SSR ;
 int RGEPHY_F_SSR_FDX ;



 int RGEPHY_F_SSR_SPD_MASK ;
 int RGEPHY_MII_1000STS ;
 int RGEPHY_MII_BMCR ;
 int RGEPHY_MII_BMSR ;
 int RGEPHY_MII_SSR ;
 int RGEPHY_SSR_FDX ;



 int RGEPHY_SSR_SPD_MASK ;
 int RL_GMEDIASTAT ;
 int RL_GMEDIASTAT_1000MBPS ;
 int RL_GMEDIASTAT_100MBPS ;
 int RL_GMEDIASTAT_10MBPS ;
 int RL_GMEDIASTAT_FDX ;
 int URE_GMEDIASTAT ;
 int mii_phy_flowstatus (struct mii_softc*) ;
 scalar_t__ rgephy_linkup (struct mii_softc*) ;

__attribute__((used)) static void
rgephy_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 int bmsr, bmcr;
 uint16_t ssr;

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;

 if (rgephy_linkup(sc) != 0)
  mii->mii_media_status |= IFM_ACTIVE;

 bmsr = PHY_READ(sc, RGEPHY_MII_BMSR);
 bmcr = PHY_READ(sc, RGEPHY_MII_BMCR);
 if (bmcr & RGEPHY_BMCR_ISO) {
  mii->mii_media_active |= IFM_NONE;
  mii->mii_media_status = 0;
  return;
 }

 if (bmcr & RGEPHY_BMCR_LOOP)
  mii->mii_media_active |= IFM_LOOP;

 if (bmcr & RGEPHY_BMCR_AUTOEN) {
  if ((bmsr & RGEPHY_BMSR_ACOMP) == 0) {

   mii->mii_media_active |= IFM_NONE;
   return;
  }
 }

 if ((sc->mii_flags & MIIF_PHYPRIV0) == 0 &&
     sc->mii_mpd_rev >= RGEPHY_8211B) {
  if (sc->mii_mpd_rev == RGEPHY_8211F) {
   ssr = PHY_READ(sc, RGEPHY_F_MII_SSR);
   switch (ssr & RGEPHY_F_SSR_SPD_MASK) {
   case 131:
    mii->mii_media_active |= IFM_1000_T;
    break;
   case 132:
    mii->mii_media_active |= IFM_100_TX;
    break;
   case 133:
    mii->mii_media_active |= IFM_10_T;
    break;
   default:
    mii->mii_media_active |= IFM_NONE;
    break;
   }
   if (ssr & RGEPHY_F_SSR_FDX)
    mii->mii_media_active |= IFM_FDX;
   else
    mii->mii_media_active |= IFM_HDX;

  } else {
   ssr = PHY_READ(sc, RGEPHY_MII_SSR);
   switch (ssr & RGEPHY_SSR_SPD_MASK) {
   case 128:
    mii->mii_media_active |= IFM_1000_T;
    break;
   case 129:
    mii->mii_media_active |= IFM_100_TX;
    break;
   case 130:
    mii->mii_media_active |= IFM_10_T;
    break;
   default:
    mii->mii_media_active |= IFM_NONE;
    break;
   }
   if (ssr & RGEPHY_SSR_FDX)
    mii->mii_media_active |= IFM_FDX;
   else
    mii->mii_media_active |= IFM_HDX;
  }
 } else {
  if (sc->mii_flags & MIIF_PHYPRIV1)
   bmsr = PHY_READ(sc, URE_GMEDIASTAT);
  else
   bmsr = PHY_READ(sc, RL_GMEDIASTAT);
  if (bmsr & RL_GMEDIASTAT_1000MBPS)
   mii->mii_media_active |= IFM_1000_T;
  else if (bmsr & RL_GMEDIASTAT_100MBPS)
   mii->mii_media_active |= IFM_100_TX;
  else if (bmsr & RL_GMEDIASTAT_10MBPS)
   mii->mii_media_active |= IFM_10_T;
  else
   mii->mii_media_active |= IFM_NONE;
  if (bmsr & RL_GMEDIASTAT_FDX)
   mii->mii_media_active |= IFM_FDX;
  else
   mii->mii_media_active |= IFM_HDX;
 }

 if ((mii->mii_media_active & IFM_FDX) != 0)
  mii->mii_media_active |= mii_phy_flowstatus(sc);

 if ((IFM_SUBTYPE(mii->mii_media_active) == IFM_1000_T) &&
     (PHY_READ(sc, RGEPHY_MII_1000STS) & RGEPHY_1000STS_MSR) != 0)
  mii->mii_media_active |= IFM_ETH_MASTER;
}
