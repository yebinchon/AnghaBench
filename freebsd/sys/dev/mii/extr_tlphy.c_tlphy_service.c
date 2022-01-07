
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int mii_ticks; } ;
struct tlphy_softc {TYPE_2__ sc_mii; scalar_t__ sc_need_acomp; } ;
struct mii_softc {int dummy; } ;
struct TYPE_7__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int BMSR_LINK ;
 int CTRL_AUISEL ;
 int DELAY (int) ;



 int const IFM_SUBTYPE (int ) ;
 int MII_ANEGTICKS ;
 int MII_BMCR ;
 int MII_BMSR ;



 int MII_TLPHY_CTRL ;
 int PHY_READ (TYPE_2__*,int ) ;
 int PHY_RESET (TYPE_2__*) ;
 int PHY_STATUS (struct mii_softc*) ;
 int PHY_WRITE (TYPE_2__*,int ,int ) ;
 int mii_phy_setmedia (TYPE_2__*) ;
 int mii_phy_update (TYPE_2__*,int) ;
 int tlphy_acomp (struct tlphy_softc*) ;
 int tlphy_auto (struct tlphy_softc*) ;

__attribute__((used)) static int
tlphy_service(struct mii_softc *self, struct mii_data *mii, int cmd)
{
 struct tlphy_softc *sc = (struct tlphy_softc *)self;
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int reg;

 if (sc->sc_need_acomp)
  tlphy_acomp(sc);

 switch (cmd) {
 case 129:
  break;

 case 130:
  switch (IFM_SUBTYPE(ife->ifm_media)) {
  case 131:





   (void)tlphy_auto(sc);
   break;
  case 133:
  case 132:
   PHY_WRITE(&sc->sc_mii, MII_BMCR, 0);
   PHY_WRITE(&sc->sc_mii, MII_TLPHY_CTRL, CTRL_AUISEL);
   DELAY(100000);
   break;
  default:
   PHY_WRITE(&sc->sc_mii, MII_TLPHY_CTRL, 0);
   DELAY(100000);
   mii_phy_setmedia(&sc->sc_mii);
  }
  break;

 case 128:



  if (IFM_SUBTYPE(ife->ifm_media) != 131)
   break;
  reg = PHY_READ(&sc->sc_mii, MII_BMSR) |
      PHY_READ(&sc->sc_mii, MII_BMSR);
  if (reg & BMSR_LINK)
   break;




  if (++sc->sc_mii.mii_ticks <= MII_ANEGTICKS)
   break;

  sc->sc_mii.mii_ticks = 0;
  PHY_RESET(&sc->sc_mii);
  (void)tlphy_auto(sc);
  return (0);
 }


 PHY_STATUS(self);


 mii_phy_update(&sc->sc_mii, cmd);
 return (0);
}
