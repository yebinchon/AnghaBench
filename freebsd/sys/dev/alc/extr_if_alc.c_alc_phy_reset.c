
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alc_softc {int alc_flags; } ;


 int ALC_FLAG_AR816X_FAMILY ;
 int alc_phy_reset_813x (struct alc_softc*) ;
 int alc_phy_reset_816x (struct alc_softc*) ;

__attribute__((used)) static void
alc_phy_reset(struct alc_softc *sc)
{

 if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0)
  alc_phy_reset_816x(sc);
 else
  alc_phy_reset_813x(sc);
}
