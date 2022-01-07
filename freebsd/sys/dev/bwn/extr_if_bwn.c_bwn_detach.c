
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct bwn_softc {int sc_snd; int sc_mem_res; int sc_mem_rid; int sc_tq; int sc_watchdog_ch; int sc_task_ch; int sc_rfswitch_ch; int sc_led_blink_ch; int sc_dev; int sc_flags; struct ieee80211com sc_ic; struct bwn_mac* sc_curmac; } ;
struct bwn_mac {int mac_res_irq; int mac_rid_irq; int * mac_intrhand; int mac_intrtask; int mac_txpower; int mac_hwreset; } ;
typedef int device_t ;


 int BWN_FLAG_INVALID ;
 int BWN_LOCK (struct bwn_softc*) ;
 int BWN_LOCK_DESTROY (struct bwn_softc*) ;
 int BWN_UNLOCK (struct bwn_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bhnd_release_pmu (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int *) ;
 int bwn_dma_free (struct bwn_mac*) ;
 int bwn_phy_detach (struct bwn_mac*) ;
 int bwn_release_bus_providers (struct bwn_softc*) ;
 int bwn_release_firmware (struct bwn_mac*) ;
 int bwn_stop (struct bwn_softc*) ;
 int callout_drain (int *) ;
 struct bwn_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ieee80211_draintask (struct ieee80211com*,int *) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mbufq_drain (int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_free (int ) ;

__attribute__((used)) static int
bwn_detach(device_t dev)
{
 struct bwn_softc *sc = device_get_softc(dev);
 struct bwn_mac *mac = sc->sc_curmac;
 struct ieee80211com *ic = &sc->sc_ic;

 sc->sc_flags |= BWN_FLAG_INVALID;

 if (device_is_attached(sc->sc_dev)) {
  BWN_LOCK(sc);
  bwn_stop(sc);
  BWN_UNLOCK(sc);
  bwn_dma_free(mac);
  callout_drain(&sc->sc_led_blink_ch);
  callout_drain(&sc->sc_rfswitch_ch);
  callout_drain(&sc->sc_task_ch);
  callout_drain(&sc->sc_watchdog_ch);
  bwn_phy_detach(mac);
  ieee80211_draintask(ic, &mac->mac_hwreset);
  ieee80211_draintask(ic, &mac->mac_txpower);
  ieee80211_ifdetach(ic);
 }
 taskqueue_drain(sc->sc_tq, &mac->mac_intrtask);
 taskqueue_free(sc->sc_tq);

 if (mac->mac_intrhand != ((void*)0)) {
  bus_teardown_intr(dev, mac->mac_res_irq, mac->mac_intrhand);
  mac->mac_intrhand = ((void*)0);
 }

 bhnd_release_pmu(dev);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_mem_rid,
     sc->sc_mem_res);
 bus_release_resource(dev, SYS_RES_IRQ, mac->mac_rid_irq,
     mac->mac_res_irq);
 mbufq_drain(&sc->sc_snd);
 bwn_release_firmware(mac);
 BWN_LOCK_DESTROY(sc);

 bwn_release_bus_providers(sc);

 return (0);
}
