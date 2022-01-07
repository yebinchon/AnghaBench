
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {int sc_tick_callout; } ;


 int DTSEC_LOCK (struct dtsec_softc*) ;
 int DTSEC_LOCK_ASSERT (struct dtsec_softc*) ;
 int DTSEC_UNLOCK (struct dtsec_softc*) ;
 int callout_drain (int *) ;

__attribute__((used)) static void
dtsec_if_deinit_locked(struct dtsec_softc *sc)
{

 DTSEC_LOCK_ASSERT(sc);

 DTSEC_UNLOCK(sc);
 callout_drain(&sc->sc_tick_callout);
 DTSEC_LOCK(sc);
}
