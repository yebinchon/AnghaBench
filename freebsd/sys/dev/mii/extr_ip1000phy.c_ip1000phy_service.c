
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mii_softc {int mii_ticks; int mii_anegticks; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int BMSR_LINK ;
 int EINVAL ;




 int IFM_ETH_MASTER ;
 int IFM_FDX ;
 int const IFM_SUBTYPE (int) ;
 int IP1000PHY_1000CR_1000T ;
 int IP1000PHY_1000CR_1000T_FDX ;
 int IP1000PHY_1000CR_MANUAL ;
 int IP1000PHY_1000CR_MASTER ;
 int IP1000PHY_1000CR_MMASTER ;
 int IP1000PHY_BMCR_10 ;
 int IP1000PHY_BMCR_100 ;
 int IP1000PHY_BMCR_1000 ;
 int IP1000PHY_BMCR_FDX ;
 int IP1000PHY_MII_1000CR ;
 int IP1000PHY_MII_BMCR ;
 int MII_BMSR ;



 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_RESET (struct mii_softc*) ;
 int PHY_STATUS (struct mii_softc*) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int ip1000phy_mii_phy_auto (struct mii_softc*,int) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
ip1000phy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 uint32_t gig, reg, speed;

 switch (cmd) {
 case 129:
  break;

 case 130:
  PHY_RESET(sc);
  switch (IFM_SUBTYPE(ife->ifm_media)) {
  case 131:
   (void)ip1000phy_mii_phy_auto(sc, ife->ifm_media);
   goto done;

  case 134:




   speed = IP1000PHY_BMCR_1000;
   break;

  case 133:
   speed = IP1000PHY_BMCR_100;
   break;

  case 132:
   speed = IP1000PHY_BMCR_10;
   break;

  default:
   return (EINVAL);
  }

  if ((ife->ifm_media & IFM_FDX) != 0) {
   speed |= IP1000PHY_BMCR_FDX;
   gig = IP1000PHY_1000CR_1000T_FDX;
  } else
   gig = IP1000PHY_1000CR_1000T;

  if (IFM_SUBTYPE(ife->ifm_media) == 134) {
   gig |=
       IP1000PHY_1000CR_MASTER | IP1000PHY_1000CR_MANUAL;
   if ((ife->ifm_media & IFM_ETH_MASTER) != 0)
    gig |= IP1000PHY_1000CR_MMASTER;
  } else
   gig = 0;
  PHY_WRITE(sc, IP1000PHY_MII_1000CR, gig);
  PHY_WRITE(sc, IP1000PHY_MII_BMCR, speed);

done:
  break;

 case 128:



  if (IFM_SUBTYPE(ife->ifm_media) != 131) {
   sc->mii_ticks = 0;
   break;
  }




  reg = PHY_READ(sc, MII_BMSR) | PHY_READ(sc, MII_BMSR);
  if (reg & BMSR_LINK) {
   sc->mii_ticks = 0;
   break;
  }


  if (sc->mii_ticks++ == 0)
   break;




  if (sc->mii_ticks <= sc->mii_anegticks)
   break;

  sc->mii_ticks = 0;
  ip1000phy_mii_phy_auto(sc, ife->ifm_media);
  break;
 }


 PHY_STATUS(sc);


 mii_phy_update(sc, cmd);
 return (0);
}
