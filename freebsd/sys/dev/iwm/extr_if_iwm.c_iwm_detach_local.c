
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_fw_info {int * fw_fp; } ;
struct iwm_softc {int * sc_notif_wait; int fw_dma; int kw_dma; int ict_dma; int sched_dma; int * txq; int rxq; int nvm_data; int * sc_phy_db; int sc_watchdog_to; int sc_led_blink_to; int sc_ic; int sc_es_task; scalar_t__ sc_attached; int sc_dev; struct iwm_fw_info sc_fw; } ;
typedef int device_t ;


 int IWM_LOCK (struct iwm_softc*) ;
 int IWM_LOCK_DESTROY (struct iwm_softc*) ;
 int IWM_UNLOCK (struct iwm_softc*) ;
 int callout_drain (int *) ;
 int ieee80211_draintask (int *,int *) ;
 int ieee80211_ifdetach (int *) ;
 int iwm_dma_contig_free (int *) ;
 int iwm_free_fw_paging (struct iwm_softc*) ;
 int iwm_free_nvm_data (int ) ;
 int iwm_free_rx_ring (struct iwm_softc*,int *) ;
 int iwm_free_tx_ring (struct iwm_softc*,int *) ;
 int iwm_fw_info_free (struct iwm_fw_info*) ;
 int iwm_notification_wait_free (int *) ;
 int iwm_pci_detach (int ) ;
 int iwm_phy_db_free (int *) ;
 int iwm_stop_device (struct iwm_softc*) ;
 int iwm_xmit_queue_drain (struct iwm_softc*) ;
 int nitems (int *) ;

__attribute__((used)) static int
iwm_detach_local(struct iwm_softc *sc, int do_net80211)
{
 struct iwm_fw_info *fw = &sc->sc_fw;
 device_t dev = sc->sc_dev;
 int i;

 if (!sc->sc_attached)
  return 0;
 sc->sc_attached = 0;
 if (do_net80211) {
  ieee80211_draintask(&sc->sc_ic, &sc->sc_es_task);
 }
 iwm_stop_device(sc);
 if (do_net80211) {
  IWM_LOCK(sc);
  iwm_xmit_queue_drain(sc);
  IWM_UNLOCK(sc);
  ieee80211_ifdetach(&sc->sc_ic);
 }
 callout_drain(&sc->sc_led_blink_to);
 callout_drain(&sc->sc_watchdog_to);

 iwm_phy_db_free(sc->sc_phy_db);
 sc->sc_phy_db = ((void*)0);

 iwm_free_nvm_data(sc->nvm_data);


 iwm_free_rx_ring(sc, &sc->rxq);
 for (i = 0; i < nitems(sc->txq); i++)
  iwm_free_tx_ring(sc, &sc->txq[i]);


 if (fw->fw_fp != ((void*)0))
  iwm_fw_info_free(fw);


 iwm_dma_contig_free(&sc->sched_dma);
 iwm_dma_contig_free(&sc->ict_dma);
 iwm_dma_contig_free(&sc->kw_dma);
 iwm_dma_contig_free(&sc->fw_dma);

 iwm_free_fw_paging(sc);


 iwm_pci_detach(dev);

 if (sc->sc_notif_wait != ((void*)0)) {
  iwm_notification_wait_free(sc->sc_notif_wait);
  sc->sc_notif_wait = ((void*)0);
 }

 IWM_LOCK_DESTROY(sc);

 return (0);
}
