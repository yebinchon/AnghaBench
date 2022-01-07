
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {scalar_t__ mii_media_active; scalar_t__ mii_media_status; int mii_mpd_oui; int mii_mpd_rev; int mii_mpd_model; int mii_ticks; int mii_anegticks; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {scalar_t__ mii_media_active; scalar_t__ mii_media_status; TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int BMSR_LINK ;
 int EINVAL ;






 int const IFM_SUBTYPE (int ) ;
 int MII_BMSR ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_RESET (struct mii_softc*) ;
 int PHY_STATUS (struct mii_softc*) ;
 int bcm5401_load_dspcode (struct mii_softc*) ;
 int bcm5411_load_dspcode (struct mii_softc*) ;
 int bcm54k2_load_dspcode (struct mii_softc*) ;
 int brgphy_mii_phy_auto (struct mii_softc*,int ) ;
 int brgphy_setmedia (struct mii_softc*,int ) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
brgphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int val;

 switch (cmd) {
 case 129:
  break;
 case 135:

  PHY_RESET(sc);

  switch (IFM_SUBTYPE(ife->ifm_media)) {
  case 136:
   brgphy_mii_phy_auto(sc, ife->ifm_media);
   break;
  case 137:
  case 141:
  case 140:
  case 139:
  case 138:
   brgphy_setmedia(sc, ife->ifm_media);
   break;
  default:
   return (EINVAL);
  }
  break;
 case 128:

  if (IFM_SUBTYPE(ife->ifm_media) != 136) {
   sc->mii_ticks = 0;
   break;
  }





  val = PHY_READ(sc, MII_BMSR) | PHY_READ(sc, MII_BMSR);
  if (val & BMSR_LINK) {
   sc->mii_ticks = 0;
   break;
  }


  if (sc->mii_ticks++ == 0)
   break;


  if (sc->mii_ticks <= sc->mii_anegticks)
   break;



  sc->mii_ticks = 0;
  brgphy_mii_phy_auto(sc, ife->ifm_media);
  break;
 }


 PHY_STATUS(sc);





 if (sc->mii_media_active != mii->mii_media_active ||
     sc->mii_media_status != mii->mii_media_status ||
     cmd == 135) {
  switch (sc->mii_mpd_oui) {
  case 130:
   switch (sc->mii_mpd_model) {
   case 134:
    bcm5401_load_dspcode(sc);
    break;
   case 133:
    if (sc->mii_mpd_rev == 1 || sc->mii_mpd_rev == 3)
     bcm5401_load_dspcode(sc);
    break;
   case 132:
    bcm5411_load_dspcode(sc);
    break;
   case 131:
    bcm54k2_load_dspcode(sc);
    break;
   }
   break;
  }
 }
 mii_phy_update(sc, cmd);
 return (0);
}
