
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mii_softc {int mii_flags; scalar_t__ mii_inst; TYPE_2__* mii_pdata; } ;
struct ifmedia_entry {int ifm_media; } ;
struct TYPE_3__ {struct ifmedia_entry* ifm_cur; } ;
struct TYPE_4__ {TYPE_1__ mii_media; } ;


 int BMCR_ISO ;
 int BMCR_RESET ;
 int DELAY (int) ;
 scalar_t__ IFM_INST (int ) ;
 int MIIF_NOISOLATE ;
 int MII_BMCR ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;

__attribute__((used)) static void
nsphy_reset(struct mii_softc *sc)
{
 struct ifmedia_entry *ife = sc->mii_pdata->mii_media.ifm_cur;
 int reg, i;

 if (sc->mii_flags & MIIF_NOISOLATE)
  reg = BMCR_RESET;
 else
  reg = BMCR_RESET | BMCR_ISO;
 PHY_WRITE(sc, MII_BMCR, reg);
 DELAY(1000);
 for (i = 0; i < 1000; i++) {
  reg = PHY_READ(sc, MII_BMCR);
  if (reg != 0 && (reg & BMCR_RESET) == 0)
   break;
  DELAY(2000);
 }

 if ((sc->mii_flags & MIIF_NOISOLATE) == 0) {
  if ((ife == ((void*)0) && sc->mii_inst != 0) ||
      (ife != ((void*)0) && IFM_INST(ife->ifm_media) != sc->mii_inst))
   PHY_WRITE(sc, MII_BMCR, reg | BMCR_ISO);
 }
}
