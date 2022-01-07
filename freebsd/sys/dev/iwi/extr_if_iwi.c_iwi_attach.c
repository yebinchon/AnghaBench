
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int wr_ihdr; } ;
struct TYPE_5__ {int wt_ihdr; } ;
struct TYPE_4__ {int wme_update; } ;
struct ieee80211com {int ic_caps; int* ic_macaddr; int (* ic_getradiocaps ) (struct ieee80211com*,int ,int *,int ) ;int ic_parent; int ic_transmit; int ic_ioctl; int ic_vap_delete; int ic_vap_create; TYPE_1__ ic_wme; int ic_scan_mindwell; int ic_scan_curchan; int ic_set_channel; int ic_scan_end; int ic_scan_start; int ic_raw_xmit; int ic_node_free; int ic_node_alloc; int ic_channels; int ic_nchans; int ic_phytype; int ic_opmode; int ic_name; struct iwi_softc* ic_softc; } ;
struct iwi_softc {int sc_ih; int * irq; TYPE_3__ sc_rxtap; TYPE_2__ sc_txtap; int sc_node_free; int rxq; int * txq; int cmdq; int * mem; int sc_sh; int sc_st; int sc_mtx; int sc_rftimer; int sc_wdtimer; int sc_monitortask; int sc_disassoctask; int sc_restarttask; int sc_radiofftask; int sc_radiontask; int sc_unr; int sc_snd; int sc_ledevent; int sc_dev; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int ENXIO ;
 int IEEE80211_CHAN_MAX ;
 int IEEE80211_C_BGSCAN ;
 int IEEE80211_C_IBSS ;
 int IEEE80211_C_MONITOR ;
 int IEEE80211_C_PMGT ;
 int IEEE80211_C_SHPREAMBLE ;
 int IEEE80211_C_STA ;
 int IEEE80211_C_WME ;
 int IEEE80211_C_WPA ;
 int IEEE80211_M_STA ;
 int IEEE80211_T_OFDM ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int IWI_CMD_RING_COUNT ;
 scalar_t__ IWI_CSR_TX1_RIDX ;
 scalar_t__ IWI_CSR_TX1_WIDX ;
 scalar_t__ IWI_EEPROM_MAC ;
 int IWI_LOCK_INIT (struct iwi_softc*) ;
 scalar_t__ IWI_MAX_IBSSNODE ;
 int IWI_RX_RADIOTAP_PRESENT ;
 int IWI_RX_RING_COUNT ;
 int IWI_TX_RADIOTAP_PRESENT ;
 int IWI_TX_RING_COUNT ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TASK_INIT (int *,int ,int ,struct iwi_softc*) ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct iwi_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_nameunit (int ) ;
 struct iwi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ieee80211_announce (struct ieee80211com*) ;
 int ieee80211_ifattach (struct ieee80211com*) ;
 int ieee80211_radiotap_attach (struct ieee80211com*,int *,int,int ,int *,int,int ) ;
 int ifqmaxlen ;
 scalar_t__ iwi_alloc_cmd_ring (struct iwi_softc*,int *,int ) ;
 scalar_t__ iwi_alloc_rx_ring (struct iwi_softc*,int *,int ) ;
 int iwi_alloc_tx_ring (struct iwi_softc*,int *,int ,scalar_t__,scalar_t__) ;
 int iwi_detach (int ) ;
 int iwi_disassoc ;
 int iwi_getradiocaps (struct ieee80211com*,int ,int *,int ) ;
 int iwi_intr ;
 int iwi_ioctl ;
 int iwi_ledattach (struct iwi_softc*) ;
 int iwi_monitor_scan ;
 int iwi_node_alloc ;
 int iwi_node_free ;
 int iwi_parent ;
 int iwi_radio_off ;
 int iwi_radio_on ;
 int iwi_raw_xmit ;
 int iwi_read_prom_word (struct iwi_softc*,scalar_t__) ;
 scalar_t__ iwi_reset (struct iwi_softc*) ;
 int iwi_restart ;
 int iwi_scan_curchan ;
 int iwi_scan_end ;
 int iwi_scan_mindwell ;
 int iwi_scan_start ;
 int iwi_set_channel ;
 int iwi_sysctlattach (struct iwi_softc*) ;
 int iwi_transmit ;
 int iwi_vap_create ;
 int iwi_vap_delete ;
 int iwi_wme_init (struct iwi_softc*) ;
 int iwi_wme_update ;
 int mbufq_init (int *,int ) ;
 int new_unrhdr (int,scalar_t__,int *) ;
 int pci_enable_busmaster (int ) ;
 int pci_write_config (int ,int,int ,int) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int ticks ;

__attribute__((used)) static int
iwi_attach(device_t dev)
{
 struct iwi_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;
 uint16_t val;
 int i, error;

 sc->sc_dev = dev;
 sc->sc_ledevent = ticks;

 IWI_LOCK_INIT(sc);
 mbufq_init(&sc->sc_snd, ifqmaxlen);

 sc->sc_unr = new_unrhdr(1, IWI_MAX_IBSSNODE-1, &sc->sc_mtx);

 TASK_INIT(&sc->sc_radiontask, 0, iwi_radio_on, sc);
 TASK_INIT(&sc->sc_radiofftask, 0, iwi_radio_off, sc);
 TASK_INIT(&sc->sc_restarttask, 0, iwi_restart, sc);
 TASK_INIT(&sc->sc_disassoctask, 0, iwi_disassoc, sc);
 TASK_INIT(&sc->sc_monitortask, 0, iwi_monitor_scan, sc);

 callout_init_mtx(&sc->sc_wdtimer, &sc->sc_mtx, 0);
 callout_init_mtx(&sc->sc_rftimer, &sc->sc_mtx, 0);

 pci_write_config(dev, 0x41, 0, 1);


 pci_enable_busmaster(dev);

 i = PCIR_BAR(0);
 sc->mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &i, RF_ACTIVE);
 if (sc->mem == ((void*)0)) {
  device_printf(dev, "could not allocate memory resource\n");
  goto fail;
 }

 sc->sc_st = rman_get_bustag(sc->mem);
 sc->sc_sh = rman_get_bushandle(sc->mem);

 i = 0;
 sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &i,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->irq == ((void*)0)) {
  device_printf(dev, "could not allocate interrupt resource\n");
  goto fail;
 }

 if (iwi_reset(sc) != 0) {
  device_printf(dev, "could not reset adapter\n");
  goto fail;
 }




 if (iwi_alloc_cmd_ring(sc, &sc->cmdq, IWI_CMD_RING_COUNT) != 0) {
  device_printf(dev, "could not allocate Cmd ring\n");
  goto fail;
 }

 for (i = 0; i < 4; i++) {
  error = iwi_alloc_tx_ring(sc, &sc->txq[i], IWI_TX_RING_COUNT,
      IWI_CSR_TX1_RIDX + i * 4,
      IWI_CSR_TX1_WIDX + i * 4);
  if (error != 0) {
   device_printf(dev, "could not allocate Tx ring %d\n",
    i+i);
   goto fail;
  }
 }

 if (iwi_alloc_rx_ring(sc, &sc->rxq, IWI_RX_RING_COUNT) != 0) {
  device_printf(dev, "could not allocate Rx ring\n");
  goto fail;
 }

 iwi_wme_init(sc);

 ic->ic_softc = sc;
 ic->ic_name = device_get_nameunit(dev);
 ic->ic_opmode = IEEE80211_M_STA;
 ic->ic_phytype = IEEE80211_T_OFDM;


 ic->ic_caps =
       IEEE80211_C_STA
     | IEEE80211_C_IBSS
     | IEEE80211_C_MONITOR
     | IEEE80211_C_PMGT
     | IEEE80211_C_SHPREAMBLE
     | IEEE80211_C_WPA
     | IEEE80211_C_WME



     ;


 val = iwi_read_prom_word(sc, IWI_EEPROM_MAC + 0);
 ic->ic_macaddr[0] = val & 0xff;
 ic->ic_macaddr[1] = val >> 8;
 val = iwi_read_prom_word(sc, IWI_EEPROM_MAC + 1);
 ic->ic_macaddr[2] = val & 0xff;
 ic->ic_macaddr[3] = val >> 8;
 val = iwi_read_prom_word(sc, IWI_EEPROM_MAC + 2);
 ic->ic_macaddr[4] = val & 0xff;
 ic->ic_macaddr[5] = val >> 8;

 iwi_getradiocaps(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
     ic->ic_channels);

 ieee80211_ifattach(ic);

 ic->ic_node_alloc = iwi_node_alloc;
 sc->sc_node_free = ic->ic_node_free;
 ic->ic_node_free = iwi_node_free;
 ic->ic_raw_xmit = iwi_raw_xmit;
 ic->ic_scan_start = iwi_scan_start;
 ic->ic_scan_end = iwi_scan_end;
 ic->ic_set_channel = iwi_set_channel;
 ic->ic_scan_curchan = iwi_scan_curchan;
 ic->ic_scan_mindwell = iwi_scan_mindwell;
 ic->ic_wme.wme_update = iwi_wme_update;

 ic->ic_vap_create = iwi_vap_create;
 ic->ic_vap_delete = iwi_vap_delete;
 ic->ic_ioctl = iwi_ioctl;
 ic->ic_transmit = iwi_transmit;
 ic->ic_parent = iwi_parent;
 ic->ic_getradiocaps = iwi_getradiocaps;

 ieee80211_radiotap_attach(ic,
     &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
  IWI_TX_RADIOTAP_PRESENT,
     &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
  IWI_RX_RADIOTAP_PRESENT);

 iwi_sysctlattach(sc);
 iwi_ledattach(sc);




 error = bus_setup_intr(dev, sc->irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), iwi_intr, sc, &sc->sc_ih);
 if (error != 0) {
  device_printf(dev, "could not set up interrupt\n");
  goto fail;
 }

 if (bootverbose)
  ieee80211_announce(ic);

 return 0;
fail:

 iwi_detach(dev);
 return ENXIO;
}
