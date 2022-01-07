
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscphy_softc {int dummy; } ;
struct mii_softc {int mii_mpd_model; } ;



 int mii_phy_reset (struct mii_softc*) ;
 int vsc8501_reset (struct vscphy_softc*) ;

__attribute__((used)) static void
vscphy_reset(struct mii_softc *sc)
{
 struct vscphy_softc *vsc = (struct vscphy_softc *)sc;

 switch (sc->mii_mpd_model) {
 case 128:
  vsc8501_reset(vsc);
  break;
 default:
  mii_phy_reset(sc);
  break;
 }
}
