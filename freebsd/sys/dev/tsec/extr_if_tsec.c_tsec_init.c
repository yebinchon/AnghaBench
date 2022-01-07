
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsec_softc {int dummy; } ;


 int TSEC_GLOBAL_LOCK (struct tsec_softc*) ;
 int TSEC_GLOBAL_UNLOCK (struct tsec_softc*) ;
 int tsec_init_locked (struct tsec_softc*) ;

__attribute__((used)) static void
tsec_init(void *xsc)
{
 struct tsec_softc *sc = xsc;

 TSEC_GLOBAL_LOCK(sc);
 tsec_init_locked(sc);
 TSEC_GLOBAL_UNLOCK(sc);
}
