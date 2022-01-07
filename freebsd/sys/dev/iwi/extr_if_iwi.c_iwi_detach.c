
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct iwi_softc {int sc_snd; int sc_unr; int mem; int irq; int rxq; int * txq; int cmdq; int sc_monitortask; int sc_disassoctask; int sc_restarttask; int sc_radiofftask; int sc_radiontask; int sc_ih; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int IWI_LOCK_DESTROY (struct iwi_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int delete_unrhdr (int ) ;
 struct iwi_softc* device_get_softc (int ) ;
 int ieee80211_draintask (struct ieee80211com*,int *) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int iwi_free_cmd_ring (struct iwi_softc*,int *) ;
 int iwi_free_rx_ring (struct iwi_softc*,int *) ;
 int iwi_free_tx_ring (struct iwi_softc*,int *) ;
 int iwi_put_firmware (struct iwi_softc*) ;
 int iwi_release_fw_dma (struct iwi_softc*) ;
 int iwi_stop (struct iwi_softc*) ;
 int mbufq_drain (int *) ;
 int rman_get_rid (int ) ;

__attribute__((used)) static int
iwi_detach(device_t dev)
{
 struct iwi_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;

 bus_teardown_intr(dev, sc->irq, sc->sc_ih);


 ieee80211_draintask(ic, &sc->sc_radiontask);
 ieee80211_draintask(ic, &sc->sc_radiofftask);
 ieee80211_draintask(ic, &sc->sc_restarttask);
 ieee80211_draintask(ic, &sc->sc_disassoctask);
 ieee80211_draintask(ic, &sc->sc_monitortask);

 iwi_stop(sc);

 ieee80211_ifdetach(ic);

 iwi_put_firmware(sc);
 iwi_release_fw_dma(sc);

 iwi_free_cmd_ring(sc, &sc->cmdq);
 iwi_free_tx_ring(sc, &sc->txq[0]);
 iwi_free_tx_ring(sc, &sc->txq[1]);
 iwi_free_tx_ring(sc, &sc->txq[2]);
 iwi_free_tx_ring(sc, &sc->txq[3]);
 iwi_free_rx_ring(sc, &sc->rxq);

 bus_release_resource(dev, SYS_RES_IRQ, rman_get_rid(sc->irq), sc->irq);

 bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(sc->mem),
     sc->mem);

 delete_unrhdr(sc->sc_unr);
 mbufq_drain(&sc->sc_snd);

 IWI_LOCK_DESTROY(sc);

 return 0;
}
