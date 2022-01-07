
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int * sc_spectral; int sc_ah; } ;


 int M_TEMP ;
 int ath_hal_spectral_supported (int ) ;
 int free (int *,int ) ;

int
ath_spectral_detach(struct ath_softc *sc)
{

 if (! ath_hal_spectral_supported(sc->sc_ah))
  return (0);

 if (sc->sc_spectral != ((void*)0)) {
  free(sc->sc_spectral, M_TEMP);
 }
 return (0);
}
