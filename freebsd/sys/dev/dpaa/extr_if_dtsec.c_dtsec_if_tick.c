
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {int sc_tick_callout; int sc_mii; } ;


 int DTSEC_LOCK (struct dtsec_softc*) ;
 int DTSEC_UNLOCK (struct dtsec_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct dtsec_softc*) ;
 int hz ;
 int mii_tick (int ) ;

__attribute__((used)) static void
dtsec_if_tick(void *arg)
{
 struct dtsec_softc *sc;

 sc = arg;


 DTSEC_LOCK(sc);

 mii_tick(sc->sc_mii);
 callout_reset(&sc->sc_tick_callout, hz, dtsec_if_tick, sc);

 DTSEC_UNLOCK(sc);
}
