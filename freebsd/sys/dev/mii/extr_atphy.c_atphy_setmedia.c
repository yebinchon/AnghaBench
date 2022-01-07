
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_softc {int mii_flags; int mii_extcapabilities; scalar_t__ mii_mpd_model; int mii_capabilities; } ;


 int ANAR_CSMA ;
 int ANAR_PAUSE_TOWARDS ;
 int BMCR_AUTOEN ;
 int BMCR_RESET ;
 int BMCR_STARTNEG ;
 int BMSR_MEDIA_TO_ANAR (int ) ;
 int EJUSTRETURN ;
 int EXTSR_1000TFDX ;
 int EXTSR_1000THDX ;
 int GTCR_ADV_1000TFDX ;
 int GTCR_ADV_1000THDX ;
 scalar_t__ IFM_AUTO ;
 int IFM_FDX ;
 int IFM_FLOW ;
 scalar_t__ IFM_SUBTYPE (int) ;
 int MIIF_FORCEPAUSE ;
 int MII_100T2CR ;
 int MII_ANAR ;
 int MII_BMCR ;
 scalar_t__ MII_MODEL_xxATHEROS_F1 ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;

__attribute__((used)) static int
atphy_setmedia(struct mii_softc *sc, int media)
{
 uint16_t anar;

 anar = BMSR_MEDIA_TO_ANAR(sc->mii_capabilities) | ANAR_CSMA;
 if ((IFM_SUBTYPE(media) == IFM_AUTO || (media & IFM_FDX) != 0) &&
     ((media & IFM_FLOW) != 0 ||
     (sc->mii_flags & MIIF_FORCEPAUSE) != 0))
  anar |= ANAR_PAUSE_TOWARDS;
 PHY_WRITE(sc, MII_ANAR, anar);
 if ((sc->mii_extcapabilities &
      (EXTSR_1000TFDX | EXTSR_1000THDX)) != 0)
  PHY_WRITE(sc, MII_100T2CR, GTCR_ADV_1000TFDX |
      GTCR_ADV_1000THDX);
 else if (sc->mii_mpd_model == MII_MODEL_xxATHEROS_F1) {
  PHY_WRITE(sc, MII_100T2CR, 0);
 }
 PHY_WRITE(sc, MII_BMCR, BMCR_RESET | BMCR_AUTOEN | BMCR_STARTNEG);

 return (EJUSTRETURN);
}
