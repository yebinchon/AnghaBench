
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alc_softc {int alc_flags; } ;


 int ALC_FLAG_AR816X_FAMILY ;
 int alc_aspm_813x (struct alc_softc*,int) ;
 int alc_aspm_816x (struct alc_softc*,int) ;

__attribute__((used)) static void
alc_aspm(struct alc_softc *sc, int init, int media)
{

 if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0)
  alc_aspm_816x(sc, init);
 else
  alc_aspm_813x(sc, media);
}
