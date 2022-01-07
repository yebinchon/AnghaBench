
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {int mii_ticks; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int BMCR_ISO ;
 int BMSR_LINK ;

 int const IFM_SUBTYPE (int ) ;
 int MII_ANEGTICKS ;
 int MII_BMCR ;
 int MII_BMSR ;



 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_RESET (struct mii_softc*) ;
 int PHY_STATUS (struct mii_softc*) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int mii_phy_setmedia (struct mii_softc*) ;
 int mii_phy_update (struct mii_softc*,int) ;
 int smcphy_auto (struct mii_softc*,int ) ;

__attribute__((used)) static int
smcphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
        struct ifmedia_entry *ife;
        int reg;

 ife = mii->mii_media.ifm_cur;

        switch (cmd) {
        case 129:
                break;

        case 130:
  switch (IFM_SUBTYPE(ife->ifm_media)) {
  case 131:
   smcphy_auto(sc, ife->ifm_media);
   break;

  default:
                 mii_phy_setmedia(sc);
   break;
  }

                break;

        case 128:
  if (IFM_SUBTYPE(ife->ifm_media) != 131) {
   break;
  }


  reg = PHY_READ(sc, MII_BMCR);
  if (reg & BMCR_ISO) {
   PHY_WRITE(sc, MII_BMCR, reg & ~BMCR_ISO);
  }

  reg = PHY_READ(sc, MII_BMSR) | PHY_READ(sc, MII_BMSR);
  if (reg & BMSR_LINK) {
   sc->mii_ticks = 0;
   break;
  }

  if (++sc->mii_ticks <= MII_ANEGTICKS) {
   break;
  }

  sc->mii_ticks = 0;
  PHY_RESET(sc);
  smcphy_auto(sc, ife->ifm_media);
                break;
        }


        PHY_STATUS(sc);


        mii_phy_update(sc, cmd);
        return (0);
}
