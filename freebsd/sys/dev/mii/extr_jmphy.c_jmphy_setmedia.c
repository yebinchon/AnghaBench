
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_softc {int mii_flags; } ;
struct ifmedia_entry {int ifm_media; } ;


 int ANAR_CSMA ;
 int ANAR_PAUSE_TOWARDS ;
 int BMCR_AUTOEN ;
 int BMCR_ISO ;
 int BMCR_PDOWN ;
 int BMCR_STARTNEG ;
 int EINVAL ;
 int EJUSTRETURN ;
 int GTCR_ADV_1000TFDX ;
 int GTCR_ADV_1000THDX ;
 int GTCR_ADV_MS ;
 int GTCR_MAN_MS ;




 int IFM_ETH_MASTER ;
 int IFM_FDX ;
 int IFM_FLOW ;

 int const IFM_SUBTYPE (int) ;
 int MIIF_FORCEPAUSE ;
 int MIIF_HAVE_GTCR ;
 int MII_100T2CR ;
 int MII_ANAR ;
 int MII_BMCR ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int jmphy_anar (struct ifmedia_entry*) ;

__attribute__((used)) static int
jmphy_setmedia(struct mii_softc *sc, struct ifmedia_entry *ife)
{
 uint16_t anar, bmcr, gig;

 gig = 0;
 bmcr = PHY_READ(sc, MII_BMCR);
 switch (IFM_SUBTYPE(ife->ifm_media)) {
 case 129:
  gig |= GTCR_ADV_1000TFDX | GTCR_ADV_1000THDX;
  break;
 case 132:
  gig |= GTCR_ADV_1000TFDX | GTCR_ADV_1000THDX;
  break;
 case 131:
 case 130:
  break;
 case 128:
  PHY_WRITE(sc, MII_BMCR, bmcr | BMCR_ISO | BMCR_PDOWN);
  return (EJUSTRETURN);
 default:
  return (EINVAL);
 }

 anar = jmphy_anar(ife);
 if ((IFM_SUBTYPE(ife->ifm_media) == 129 ||
     (ife->ifm_media & IFM_FDX) != 0) &&
     ((ife->ifm_media & IFM_FLOW) != 0 ||
     (sc->mii_flags & MIIF_FORCEPAUSE) != 0))
  anar |= ANAR_PAUSE_TOWARDS;

 if ((sc->mii_flags & MIIF_HAVE_GTCR) != 0) {
  if (IFM_SUBTYPE(ife->ifm_media) == 132) {
   gig |= GTCR_MAN_MS;
   if ((ife->ifm_media & IFM_ETH_MASTER) != 0)
    gig |= GTCR_ADV_MS;
  }
  PHY_WRITE(sc, MII_100T2CR, gig);
 }
 PHY_WRITE(sc, MII_ANAR, anar | ANAR_CSMA);
 PHY_WRITE(sc, MII_BMCR, bmcr | BMCR_AUTOEN | BMCR_STARTNEG);

 return (EJUSTRETURN);
}
