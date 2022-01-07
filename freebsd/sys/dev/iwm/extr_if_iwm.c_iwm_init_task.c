
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ic_nrunning; } ;
struct iwm_softc {int sc_flags; TYPE_1__ sc_ic; int sc_mtx; } ;


 int IWM_FLAG_BUSY ;
 int IWM_LOCK (struct iwm_softc*) ;
 int IWM_UNLOCK (struct iwm_softc*) ;
 int iwm_init (struct iwm_softc*) ;
 int iwm_stop (struct iwm_softc*) ;
 int msleep (int*,int *,int ,char*,int ) ;
 int wakeup (int*) ;

void
iwm_init_task(void *arg1)
{
 struct iwm_softc *sc = arg1;

 IWM_LOCK(sc);
 while (sc->sc_flags & IWM_FLAG_BUSY)
  msleep(&sc->sc_flags, &sc->sc_mtx, 0, "iwmpwr", 0);
 sc->sc_flags |= IWM_FLAG_BUSY;
 iwm_stop(sc);
 if (sc->sc_ic.ic_nrunning > 0)
  iwm_init(sc);
 sc->sc_flags &= ~IWM_FLAG_BUSY;
 wakeup(&sc->sc_flags);
 IWM_UNLOCK(sc);
}
