
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {scalar_t__ mii_mpd_model; scalar_t__ mii_mpd_rev; struct mii_data* mii_pdata; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {int mii_media_active; int mii_media_status; TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int ANLPAR_10 ;
 int ANLPAR_10_FD ;
 int ANLPAR_T4 ;
 int ANLPAR_TX ;
 int ANLPAR_TX_FD ;
 int BMCR_AUTOEN ;
 int BMCR_ISO ;
 int BMCR_LOOP ;
 int BMSR_ACOMP ;
 int BMSR_LINK ;
 int IFM_100_T4 ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_LOOP ;
 int IFM_NONE ;
 int MII_ANAR ;
 int MII_ANLPAR ;
 int MII_BMCR ;
 int MII_BMSR ;
 int PHY_READ (struct mii_softc*,int) ;
 int RL_MEDIASTAT ;
 int RL_MEDIASTAT_SPEED10 ;
 int mii_phy_flowstatus (struct mii_softc*) ;

__attribute__((used)) static void
rlphy_status(struct mii_softc *phy)
{
 struct mii_data *mii = phy->mii_pdata;
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int bmsr, bmcr, anlpar;

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;

 bmsr = PHY_READ(phy, MII_BMSR) | PHY_READ(phy, MII_BMSR);
 if (bmsr & BMSR_LINK)
  mii->mii_media_status |= IFM_ACTIVE;

 bmcr = PHY_READ(phy, MII_BMCR);
 if (bmcr & BMCR_ISO) {
  mii->mii_media_active |= IFM_NONE;
  mii->mii_media_status = 0;
  return;
 }

 if (bmcr & BMCR_LOOP)
  mii->mii_media_active |= IFM_LOOP;

 if (bmcr & BMCR_AUTOEN) {





  if ((bmsr & BMSR_ACOMP) == 0) {

   mii->mii_media_active |= IFM_NONE;
   return;
  }

  if ((anlpar = PHY_READ(phy, MII_ANAR) &
      PHY_READ(phy, MII_ANLPAR))) {
   if (anlpar & ANLPAR_TX_FD)
    mii->mii_media_active |= IFM_100_TX|IFM_FDX;
   else if (anlpar & ANLPAR_T4)
    mii->mii_media_active |= IFM_100_T4|IFM_HDX;
   else if (anlpar & ANLPAR_TX)
    mii->mii_media_active |= IFM_100_TX|IFM_HDX;
   else if (anlpar & ANLPAR_10_FD)
    mii->mii_media_active |= IFM_10_T|IFM_FDX;
   else if (anlpar & ANLPAR_10)
    mii->mii_media_active |= IFM_10_T|IFM_HDX;
   else
    mii->mii_media_active |= IFM_NONE;
   if ((mii->mii_media_active & IFM_FDX) != 0)
    mii->mii_media_active |=
        mii_phy_flowstatus(phy);
   return;
  }
  if (!(phy->mii_mpd_model == 0 && phy->mii_mpd_rev == 0)) {
   if (PHY_READ(phy, 0x0019) & 0x01)
    mii->mii_media_active |= IFM_100_TX;
   else
    mii->mii_media_active |= IFM_10_T;
  } else {
   if (PHY_READ(phy, RL_MEDIASTAT) &
       RL_MEDIASTAT_SPEED10)
    mii->mii_media_active |= IFM_10_T;
   else
    mii->mii_media_active |= IFM_100_TX;
  }
  mii->mii_media_active |= IFM_HDX;
 } else
  mii->mii_media_active = ife->ifm_media;
}
