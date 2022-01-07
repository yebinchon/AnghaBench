
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int dummy; } ;


 int ATH_LOCK (struct ath_softc*) ;
 int ATH_UNLOCK (struct ath_softc*) ;
 int ath_stop (struct ath_softc*) ;

void
ath_shutdown(struct ath_softc *sc)
{

 ATH_LOCK(sc);
 ath_stop(sc);
 ATH_UNLOCK(sc);

}
