
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


 int ANAR_CSMA ;
 int ANAR_PAUSE_TOWARDS ;
 int BMCR_AUTOEN ;
 int BMCR_FDX ;
 int BMCR_ISO ;
 int BMCR_RESET ;
 int BMCR_S10 ;
 int BMCR_S100 ;
 int BMCR_STARTNEG ;
 int BMSR_LINK ;
 int EINVAL ;
 int EXTSR_1000TFDX ;
 int EXTSR_1000THDX ;
 int IFM_1000_T ;


 int IFM_AUTO ;
 int IFM_FDX ;
 int IFM_FLOW ;

 int IFM_SUBTYPE (int) ;
 int MIIF_FORCEPAUSE ;
 int MII_100T2CR ;
 int MII_ANAR ;
 int MII_BMCR ;
 int MII_BMSR ;



 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_STATUS (struct mii_softc*) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int atphy_anar (struct ifmedia_entry*) ;
 int atphy_setmedia (struct mii_softc*,int) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
atphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 uint16_t anar, bmcr, bmsr;

 switch (cmd) {
 case 129:
  break;

 case 130:
  if (IFM_SUBTYPE(ife->ifm_media) == IFM_AUTO ||
      IFM_SUBTYPE(ife->ifm_media) == IFM_1000_T) {
   atphy_setmedia(sc, ife->ifm_media);
   break;
  }

  bmcr = 0;
  switch (IFM_SUBTYPE(ife->ifm_media)) {
  case 133:
   bmcr = BMCR_S100;
   break;
  case 132:
   bmcr = BMCR_S10;
   break;
  case 131:
   bmcr = PHY_READ(sc, MII_BMCR);
   PHY_WRITE(sc, MII_BMCR, bmcr | BMCR_ISO);
   goto done;
  default:
   return (EINVAL);
  }

  anar = atphy_anar(ife);
  if ((ife->ifm_media & IFM_FDX) != 0) {
   bmcr |= BMCR_FDX;
   if ((ife->ifm_media & IFM_FLOW) != 0 ||
       (sc->mii_flags & MIIF_FORCEPAUSE) != 0)
    anar |= ANAR_PAUSE_TOWARDS;
  }

  if ((sc->mii_extcapabilities & (EXTSR_1000TFDX |
      EXTSR_1000THDX)) != 0)
   PHY_WRITE(sc, MII_100T2CR, 0);
  PHY_WRITE(sc, MII_ANAR, anar | ANAR_CSMA);




  PHY_WRITE(sc, MII_BMCR, bmcr | BMCR_RESET | BMCR_AUTOEN |
      BMCR_STARTNEG);
done:
  break;

 case 128:



  if (IFM_SUBTYPE(ife->ifm_media) != IFM_AUTO) {
   sc->mii_ticks = 0;
   break;
  }





  bmsr = PHY_READ(sc, MII_BMSR) | PHY_READ(sc, MII_BMSR);
  if (bmsr & BMSR_LINK) {
   sc->mii_ticks = 0;
   break;
  }


  if (sc->mii_ticks++ == 0)
   break;
  if (sc->mii_ticks <= sc->mii_anegticks)
   return (0);

  sc->mii_ticks = 0;
  atphy_setmedia(sc, ife->ifm_media);
  break;
 }


 PHY_STATUS(sc);


 mii_phy_update(sc, cmd);
 return (0);
}
