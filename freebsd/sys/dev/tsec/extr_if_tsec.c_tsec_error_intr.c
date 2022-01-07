
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsec_softc {int dummy; } ;


 int TSEC_GLOBAL_LOCK (struct tsec_softc*) ;
 int TSEC_GLOBAL_UNLOCK (struct tsec_softc*) ;
 int tsec_error_intr_locked (struct tsec_softc*,int) ;

void
tsec_error_intr(void *arg)
{
 struct tsec_softc *sc = arg;

 TSEC_GLOBAL_LOCK(sc);
 tsec_error_intr_locked(sc, -1);
 TSEC_GLOBAL_UNLOCK(sc);
}
