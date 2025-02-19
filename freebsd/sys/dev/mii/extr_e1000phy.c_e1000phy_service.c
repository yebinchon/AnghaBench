
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct mii_softc {int mii_flags; int mii_extcapabilities; int mii_ticks; int mii_anegticks; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int BMSR_LINK ;
 int E1000_1GCR ;
 int E1000_1GCR_1000T ;
 int E1000_1GCR_1000T_FD ;
 int E1000_1GCR_MS_ENABLE ;
 int E1000_1GCR_MS_VALUE ;
 int E1000_AR ;
 int E1000_AR_SELECTOR_FIELD ;
 int E1000_CR ;
 int E1000_CR_AUTO_NEG_ENABLE ;
 int E1000_CR_FULL_DUPLEX ;
 int E1000_CR_ISOLATE ;
 int E1000_CR_POWER_DOWN ;
 int E1000_CR_RESET ;
 int E1000_CR_SPEED_10 ;
 int E1000_CR_SPEED_100 ;
 int E1000_CR_SPEED_1000 ;
 int EINVAL ;
 int EXTSR_1000XFDX ;
 int EXTSR_1000XHDX ;




 int const IFM_AUTO ;
 int IFM_ETH_MASTER ;
 int IFM_FDX ;

 int const IFM_SUBTYPE (int) ;
 int MIIF_HAVE_GTCR ;
 int MII_BMSR ;



 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_RESET (struct mii_softc*) ;
 int PHY_STATUS (struct mii_softc*) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int e1000phy_mii_phy_auto (struct mii_softc*,int) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
e1000phy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 uint16_t speed, gig;
 int reg;

 switch (cmd) {
 case 129:
  break;

 case 130:
  if (IFM_SUBTYPE(ife->ifm_media) == IFM_AUTO) {
   e1000phy_mii_phy_auto(sc, ife->ifm_media);
   break;
  }

  speed = 0;
  switch (IFM_SUBTYPE(ife->ifm_media)) {
  case 134:
   if ((sc->mii_flags & MIIF_HAVE_GTCR) == 0)
    return (EINVAL);
   speed = E1000_CR_SPEED_1000;
   break;
  case 135:
   if ((sc->mii_extcapabilities &
       (EXTSR_1000XFDX | EXTSR_1000XHDX)) == 0)
    return (EINVAL);
   speed = E1000_CR_SPEED_1000;
   break;
  case 133:
   speed = E1000_CR_SPEED_100;
   break;
  case 132:
   speed = E1000_CR_SPEED_10;
   break;
  case 131:
   reg = PHY_READ(sc, E1000_CR);
   PHY_WRITE(sc, E1000_CR,
       reg | E1000_CR_ISOLATE | E1000_CR_POWER_DOWN);
   goto done;
  default:
   return (EINVAL);
  }

  if ((ife->ifm_media & IFM_FDX) != 0) {
   speed |= E1000_CR_FULL_DUPLEX;
   gig = E1000_1GCR_1000T_FD;
  } else
   gig = E1000_1GCR_1000T;

  reg = PHY_READ(sc, E1000_CR);
  reg &= ~E1000_CR_AUTO_NEG_ENABLE;
  PHY_WRITE(sc, E1000_CR, reg | E1000_CR_RESET);

  if (IFM_SUBTYPE(ife->ifm_media) == 134) {
   gig |= E1000_1GCR_MS_ENABLE;
   if ((ife->ifm_media & IFM_ETH_MASTER) != 0)
    gig |= E1000_1GCR_MS_VALUE;
  } else if ((sc->mii_flags & MIIF_HAVE_GTCR) != 0)
   gig = 0;
  PHY_WRITE(sc, E1000_1GCR, gig);
  PHY_WRITE(sc, E1000_AR, E1000_AR_SELECTOR_FIELD);
  PHY_WRITE(sc, E1000_CR, speed | E1000_CR_RESET);
done:
  break;
 case 128:



  if (IFM_SUBTYPE(ife->ifm_media) != IFM_AUTO) {
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
  PHY_RESET(sc);
  e1000phy_mii_phy_auto(sc, ife->ifm_media);
  break;
 }


 PHY_STATUS(sc);


 mii_phy_update(sc, cmd);
 return (0);
}
