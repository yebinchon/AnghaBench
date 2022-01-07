
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {int mii_flags; scalar_t__ mii_media_active; scalar_t__ mii_media_status; int mii_ticks; int mii_anegticks; } ;
struct TYPE_2__ {int ifm_media; struct ifmedia_entry* ifm_cur; } ;
struct mii_data {scalar_t__ mii_media_active; scalar_t__ mii_media_status; TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int BMCR_ISO ;
 int BMCR_PDOWN ;
 int EINVAL ;




 int IFM_ETH_MASTER ;
 int IFM_FDX ;
 int IFM_FLAG0 ;
 int IFM_FLOW ;

 int const IFM_SUBTYPE (int) ;
 int MIIF_FORCEPAUSE ;
 int MII_BMCR ;



 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_RESET (struct mii_softc*) ;
 int PHY_STATUS (struct mii_softc*) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int RGEPHY_1000CTL_AFD ;
 int RGEPHY_1000CTL_AHD ;
 int RGEPHY_1000CTL_MSC ;
 int RGEPHY_1000CTL_MSE ;
 int RGEPHY_ANAR_10 ;
 int RGEPHY_ANAR_10_FD ;
 int RGEPHY_ANAR_ASP ;
 int RGEPHY_ANAR_PC ;
 int RGEPHY_ANAR_TX ;
 int RGEPHY_ANAR_TX_FD ;
 int RGEPHY_BMCR_AUTOEN ;
 int RGEPHY_BMCR_FDX ;
 int RGEPHY_BMCR_STARTNEG ;
 int RGEPHY_MII_1000CTL ;
 int RGEPHY_MII_ANAR ;
 int RGEPHY_MII_BMCR ;
 int RGEPHY_S10 ;
 int RGEPHY_S100 ;
 int RGEPHY_S1000 ;
 int mii_phy_update (struct mii_softc*,int) ;
 int rgephy_linkup (struct mii_softc*) ;
 int rgephy_load_dspcode (struct mii_softc*) ;
 int rgephy_loop (struct mii_softc*) ;
 int rgephy_mii_phy_auto (struct mii_softc*,int) ;

__attribute__((used)) static int
rgephy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int speed, gig, anar;

 switch (cmd) {
 case 129:
  break;

 case 130:
  PHY_RESET(sc);

  anar = PHY_READ(sc, RGEPHY_MII_ANAR);
  anar &= ~(RGEPHY_ANAR_PC | RGEPHY_ANAR_ASP |
      RGEPHY_ANAR_TX_FD | RGEPHY_ANAR_TX |
      RGEPHY_ANAR_10_FD | RGEPHY_ANAR_10);

  switch (IFM_SUBTYPE(ife->ifm_media)) {
  case 132:







   (void)rgephy_mii_phy_auto(sc, ife->ifm_media);
   break;
  case 135:
   speed = RGEPHY_S1000;
   goto setit;
  case 134:
   speed = RGEPHY_S100;
   anar |= RGEPHY_ANAR_TX_FD | RGEPHY_ANAR_TX;
   goto setit;
  case 133:
   speed = RGEPHY_S10;
   anar |= RGEPHY_ANAR_10_FD | RGEPHY_ANAR_10;
setit:
   if ((ife->ifm_media & IFM_FLOW) != 0 &&
       (mii->mii_media.ifm_media & IFM_FLAG0) != 0)
    return (EINVAL);

   if ((ife->ifm_media & IFM_FDX) != 0) {
    speed |= RGEPHY_BMCR_FDX;
    gig = RGEPHY_1000CTL_AFD;
    anar &= ~(RGEPHY_ANAR_TX | RGEPHY_ANAR_10);
    if ((ife->ifm_media & IFM_FLOW) != 0 ||
        (sc->mii_flags & MIIF_FORCEPAUSE) != 0)
     anar |=
         RGEPHY_ANAR_PC | RGEPHY_ANAR_ASP;
   } else {
    gig = RGEPHY_1000CTL_AHD;
    anar &=
        ~(RGEPHY_ANAR_TX_FD | RGEPHY_ANAR_10_FD);
   }
   if (IFM_SUBTYPE(ife->ifm_media) == 135) {
    gig |= RGEPHY_1000CTL_MSE;
    if ((ife->ifm_media & IFM_ETH_MASTER) != 0)
        gig |= RGEPHY_1000CTL_MSC;
   } else {
    gig = 0;
    anar &= ~RGEPHY_ANAR_ASP;
   }
   if ((mii->mii_media.ifm_media & IFM_FLAG0) == 0)
    speed |=
        RGEPHY_BMCR_AUTOEN | RGEPHY_BMCR_STARTNEG;
   rgephy_loop(sc);
   PHY_WRITE(sc, RGEPHY_MII_1000CTL, gig);
   PHY_WRITE(sc, RGEPHY_MII_ANAR, anar);
   PHY_WRITE(sc, RGEPHY_MII_BMCR, speed);
   break;
  case 131:
   PHY_WRITE(sc, MII_BMCR, BMCR_ISO | BMCR_PDOWN);
   break;
  default:
   return (EINVAL);
  }
  break;

 case 128:



  if (IFM_SUBTYPE(ife->ifm_media) != 132) {
   sc->mii_ticks = 0;
   break;
  }





  if (rgephy_linkup(sc) != 0) {
   sc->mii_ticks = 0;
   break;
  }


  if (sc->mii_ticks++ == 0)
   break;


  if (sc->mii_ticks <= sc->mii_anegticks)
   return (0);

  sc->mii_ticks = 0;
  rgephy_mii_phy_auto(sc, ife->ifm_media);
  break;
 }


 PHY_STATUS(sc);






 if (sc->mii_media_active != mii->mii_media_active ||
     sc->mii_media_status != mii->mii_media_status ||
     cmd == 130) {
  rgephy_load_dspcode(sc);
 }
 mii_phy_update(sc, cmd);
 return (0);
}
