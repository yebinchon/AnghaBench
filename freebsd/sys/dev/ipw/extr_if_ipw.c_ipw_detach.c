
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct ipw_softc {int sc_mtx; int * sc_firmware; int mem; int irq; int sc_snd; int sc_wdtimer; int sc_init_task; int sc_ih; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int FIRMWARE_UNLOAD ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_drain (int *) ;
 struct ipw_softc* device_get_softc (int ) ;
 int firmware_put (int *,int ) ;
 int ieee80211_draintask (struct ieee80211com*,int *) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int ipw_release (struct ipw_softc*) ;
 int ipw_stop (struct ipw_softc*) ;
 int mbufq_drain (int *) ;
 int mtx_destroy (int *) ;
 int rman_get_rid (int ) ;

__attribute__((used)) static int
ipw_detach(device_t dev)
{
 struct ipw_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;

 bus_teardown_intr(dev, sc->irq, sc->sc_ih);

 ieee80211_draintask(ic, &sc->sc_init_task);
 ipw_stop(sc);

 ieee80211_ifdetach(ic);

 callout_drain(&sc->sc_wdtimer);
 mbufq_drain(&sc->sc_snd);

 ipw_release(sc);

 bus_release_resource(dev, SYS_RES_IRQ, rman_get_rid(sc->irq), sc->irq);

 bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(sc->mem),
     sc->mem);

 if (sc->sc_firmware != ((void*)0)) {
  firmware_put(sc->sc_firmware, FIRMWARE_UNLOAD);
  sc->sc_firmware = ((void*)0);
 }

 mtx_destroy(&sc->sc_mtx);

 return 0;
}
