
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {scalar_t__ mii_media_active; scalar_t__ mii_media_status; int mii_ticks; int mii_anegticks; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {scalar_t__ mii_media_active; scalar_t__ mii_media_status; TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int BMCR_ISO ;
 int BMCR_PDOWN ;
 int BMSR_LINK ;
 int CIPHY_1000CTL_AFD ;
 int CIPHY_1000CTL_AHD ;
 int CIPHY_1000CTL_MSC ;
 int CIPHY_1000CTL_MSE ;
 int CIPHY_BMCR_AUTOEN ;
 int CIPHY_BMCR_FDX ;
 int CIPHY_BMCR_STARTNEG ;
 int CIPHY_MII_1000CTL ;
 int CIPHY_MII_ANAR ;
 int CIPHY_MII_BMCR ;
 int CIPHY_S10 ;
 int CIPHY_S100 ;
 int CIPHY_S1000 ;
 int CIPHY_SEL_TYPE ;
 int EINVAL ;




 int IFM_ETH_MASTER ;
 int IFM_FDX ;

 int const IFM_SUBTYPE (int) ;
 int MII_BMCR ;
 int MII_BMSR ;



 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_STATUS (struct mii_softc*) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int ciphy_fixup (struct mii_softc*) ;
 int mii_phy_auto (struct mii_softc*) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
ciphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int reg, speed, gig;

 switch (cmd) {
 case 129:
  break;

 case 130:
  ciphy_fixup(sc);

  switch (IFM_SUBTYPE(ife->ifm_media)) {
  case 132:







   (void)mii_phy_auto(sc);
   break;
  case 135:
   speed = CIPHY_S1000;
   goto setit;
  case 134:
   speed = CIPHY_S100;
   goto setit;
  case 133:
   speed = CIPHY_S10;
setit:
   if ((ife->ifm_media & IFM_FDX) != 0) {
    speed |= CIPHY_BMCR_FDX;
    gig = CIPHY_1000CTL_AFD;
   } else
    gig = CIPHY_1000CTL_AHD;

   if (IFM_SUBTYPE(ife->ifm_media) == 135) {
    gig |= CIPHY_1000CTL_MSE;
    if ((ife->ifm_media & IFM_ETH_MASTER) != 0)
     gig |= CIPHY_1000CTL_MSC;
    speed |=
        CIPHY_BMCR_AUTOEN | CIPHY_BMCR_STARTNEG;
   } else
    gig = 0;
   PHY_WRITE(sc, CIPHY_MII_1000CTL, gig);
   PHY_WRITE(sc, CIPHY_MII_BMCR, speed);
   PHY_WRITE(sc, CIPHY_MII_ANAR, CIPHY_SEL_TYPE);
   break;
  case 131:
   PHY_WRITE(sc, MII_BMCR, BMCR_ISO | BMCR_PDOWN);
   break;
  default:
   return (EINVAL);
  }
  break;

 case 128:



  if (IFM_SUBTYPE(ife->ifm_media) != 132)
   break;






  reg = PHY_READ(sc, MII_BMSR) | PHY_READ(sc, MII_BMSR);
  if (reg & BMSR_LINK)
   break;


  if (++sc->mii_ticks == 0)
   break;



  if (sc->mii_ticks <= sc->mii_anegticks)
   break;

  sc->mii_ticks = 0;
  mii_phy_auto(sc);
  break;
 }


 PHY_STATUS(sc);





 if (sc->mii_media_active != mii->mii_media_active ||
     sc->mii_media_status != mii->mii_media_status ||
     cmd == 130) {
  ciphy_fixup(sc);
 }
 mii_phy_update(sc, cmd);
 return (0);
}
