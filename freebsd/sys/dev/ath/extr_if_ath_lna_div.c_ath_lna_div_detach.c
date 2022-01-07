
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {scalar_t__ sc_dolnadiv; int * sc_lna_div; } ;


 int M_TEMP ;
 int free (int *,int ) ;

int
ath_lna_div_detach(struct ath_softc *sc)
{
 if (sc->sc_lna_div != ((void*)0)) {
  free(sc->sc_lna_div, M_TEMP);
  sc->sc_lna_div = ((void*)0);
 }
 sc->sc_dolnadiv = 0;
 return (0);
}
