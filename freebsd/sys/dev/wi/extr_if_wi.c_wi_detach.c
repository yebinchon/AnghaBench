
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct wi_softc {int wi_gone; int sc_mtx; int sc_snd; int wi_intrhand; int irq; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int WI_LOCK (struct wi_softc*) ;
 int WI_UNLOCK (struct wi_softc*) ;
 int bus_child_present (int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct wi_softc* device_get_softc (int ) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mbufq_drain (int *) ;
 int mtx_destroy (int *) ;
 int wi_free (int ) ;
 int wi_stop (struct wi_softc*,int ) ;

int
wi_detach(device_t dev)
{
 struct wi_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;

 WI_LOCK(sc);


 sc->wi_gone |= !bus_child_present(dev);

 wi_stop(sc, 0);
 WI_UNLOCK(sc);
 ieee80211_ifdetach(ic);

 bus_teardown_intr(dev, sc->irq, sc->wi_intrhand);
 wi_free(dev);
 mbufq_drain(&sc->sc_snd);
 mtx_destroy(&sc->sc_mtx);
 return (0);
}
