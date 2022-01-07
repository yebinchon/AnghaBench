
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_softc {scalar_t__ mii_mpd_model; struct mii_data* mii_pdata; } ;
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
 int IP1000PHY_1000SR_MASTER ;
 int IP1000PHY_BMCR_AUTOEN ;
 int IP1000PHY_BMCR_LOOP ;
 int IP1000PHY_BMSR_ANEGCOMP ;
 int IP1000PHY_BMSR_LINK ;
 int IP1000PHY_LSR ;
 int IP1000PHY_LSR_FULL_DUPLEX ;



 int IP1000PHY_LSR_SPEED_MASK ;
 int IP1000PHY_MII_1000SR ;
 int IP1000PHY_MII_BMCR ;
 int IP1000PHY_MII_BMSR ;
 scalar_t__ MII_MODEL_xxICPLUS_IP1001 ;
 int PC_LinkSpeed (int) ;




 int PC_PhyDuplexStatus ;
 int PHY_READ (struct mii_softc*,int ) ;
 int STGE_PhyCtrl ;
 int mii_phy_flowstatus (struct mii_softc*) ;

__attribute__((used)) static void
ip1000phy_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 uint32_t bmsr, bmcr, stat;

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;

 bmsr = PHY_READ(sc, IP1000PHY_MII_BMSR) |
     PHY_READ(sc, IP1000PHY_MII_BMSR);
 if ((bmsr & IP1000PHY_BMSR_LINK) != 0)
  mii->mii_media_status |= IFM_ACTIVE;

 bmcr = PHY_READ(sc, IP1000PHY_MII_BMCR);
 if ((bmcr & IP1000PHY_BMCR_LOOP) != 0)
  mii->mii_media_active |= IFM_LOOP;

 if ((bmcr & IP1000PHY_BMCR_AUTOEN) != 0) {
  if ((bmsr & IP1000PHY_BMSR_ANEGCOMP) == 0) {

   mii->mii_media_active |= IFM_NONE;
   return;
                }
        }

 if (sc->mii_mpd_model == MII_MODEL_xxICPLUS_IP1001) {
  stat = PHY_READ(sc, IP1000PHY_LSR);
  switch (stat & IP1000PHY_LSR_SPEED_MASK) {
  case 134:
   mii->mii_media_active |= IFM_10_T;
   break;
  case 133:
   mii->mii_media_active |= IFM_100_TX;
   break;
  case 132:
   mii->mii_media_active |= IFM_1000_T;
   break;
  default:
   mii->mii_media_active |= IFM_NONE;
   return;
  }
  if ((stat & IP1000PHY_LSR_FULL_DUPLEX) != 0)
   mii->mii_media_active |= IFM_FDX;
  else
   mii->mii_media_active |= IFM_HDX;
 } else {
  stat = PHY_READ(sc, STGE_PhyCtrl);
  switch (PC_LinkSpeed(stat)) {
  case 128:
   mii->mii_media_active |= IFM_NONE;
   return;
  case 131:
   mii->mii_media_active |= IFM_10_T;
   break;
  case 130:
   mii->mii_media_active |= IFM_100_TX;
   break;
  case 129:
   mii->mii_media_active |= IFM_1000_T;
   break;
  default:
   mii->mii_media_active |= IFM_NONE;
   return;
  }
  if ((stat & PC_PhyDuplexStatus) != 0)
   mii->mii_media_active |= IFM_FDX;
  else
   mii->mii_media_active |= IFM_HDX;
 }

 if ((mii->mii_media_active & IFM_FDX) != 0)
  mii->mii_media_active |= mii_phy_flowstatus(sc);

 if ((mii->mii_media_active & IFM_1000_T) != 0) {
  stat = PHY_READ(sc, IP1000PHY_MII_1000SR);
  if ((stat & IP1000PHY_1000SR_MASTER) != 0)
   mii->mii_media_active |= IFM_ETH_MASTER;
 }
}
