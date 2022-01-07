
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int wr_ihdr; } ;
struct TYPE_3__ {int wt_ihdr; } ;
struct ieee80211com {int ic_caps; int* ic_macaddr; int ic_parent; int ic_transmit; int ic_vap_delete; int ic_vap_create; int ic_raw_xmit; int ic_scan_mindwell; int ic_scan_curchan; int ic_set_channel; int (* ic_getradiocaps ) (struct ieee80211com*,int ,int *,int ) ;int ic_scan_end; int ic_scan_start; int ic_channels; int ic_nchans; int ic_phytype; int ic_opmode; int ic_name; struct ipw_softc* ic_softc; } ;
struct ipw_softc {int sc_mtx; int * mem; int * irq; int sc_ih; TYPE_2__ sc_rxtap; TYPE_1__ sc_txtap; int flags; int chanmask; int sc_sh; int sc_st; int sc_wdtimer; int sc_init_task; int sc_snd; int sc_dev; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int CTLTYPE_OPAQUE ;
 int ENXIO ;
 int IEEE80211_CHAN_MAX ;
 int IEEE80211_C_IBSS ;
 int IEEE80211_C_MONITOR ;
 int IEEE80211_C_PMGT ;
 int IEEE80211_C_SHPREAMBLE ;
 int IEEE80211_C_STA ;
 int IEEE80211_C_WPA ;
 int IEEE80211_M_STA ;
 int IEEE80211_T_DS ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 scalar_t__ IPW_EEPROM_MAC ;
 scalar_t__ IPW_EEPROM_RADIO ;
 int IPW_FLAG_HAS_RADIO_SWITCH ;
 int IPW_RX_RADIOTAP_PRESENT ;
 int IPW_TX_RADIOTAP_PRESENT ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int MTX_RECURSE ;
 int OID_AUTO ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,struct ipw_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TASK_INIT (int *,int ,int ,struct ipw_softc*) ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct ipw_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_nameunit (int ) ;
 struct ipw_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 int ieee80211_announce (struct ieee80211com*) ;
 int ieee80211_ifattach (struct ieee80211com*) ;
 int ieee80211_radiotap_attach (struct ieee80211com*,int *,int,int ,int *,int,int ) ;
 int ifqmaxlen ;
 scalar_t__ ipw_dma_alloc (struct ipw_softc*) ;
 int ipw_getradiocaps (struct ieee80211com*,int ,int *,int ) ;
 int ipw_init_task ;
 int ipw_intr ;
 int ipw_parent ;
 int ipw_raw_xmit ;
 int ipw_read_chanmask (struct ipw_softc*) ;
 int ipw_read_prom_word (struct ipw_softc*,scalar_t__) ;
 int ipw_release (struct ipw_softc*) ;
 scalar_t__ ipw_reset (struct ipw_softc*) ;
 int ipw_scan_curchan ;
 int ipw_scan_end ;
 int ipw_scan_mindwell ;
 int ipw_scan_start ;
 int ipw_set_channel ;
 int ipw_sysctl_radio ;
 int ipw_sysctl_stats ;
 int ipw_transmit ;
 int ipw_vap_create ;
 int ipw_vap_delete ;
 int mbufq_init (int *,int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int ,int) ;
 int pci_enable_busmaster (int ) ;
 int pci_write_config (int ,int,int ,int) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
ipw_attach(device_t dev)
{
 struct ipw_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;
 uint16_t val;
 int error, i;

 sc->sc_dev = dev;

 mtx_init(&sc->sc_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF | MTX_RECURSE);
 mbufq_init(&sc->sc_snd, ifqmaxlen);
 TASK_INIT(&sc->sc_init_task, 0, ipw_init_task, sc);
 callout_init_mtx(&sc->sc_wdtimer, &sc->sc_mtx, 0);

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
  goto fail1;
 }

 if (ipw_reset(sc) != 0) {
  device_printf(dev, "could not reset adapter\n");
  goto fail2;
 }

 if (ipw_dma_alloc(sc) != 0) {
  device_printf(dev, "could not allocate DMA resources\n");
  goto fail2;
 }

 ic->ic_softc = sc;
 ic->ic_name = device_get_nameunit(dev);
 ic->ic_opmode = IEEE80211_M_STA;
 ic->ic_phytype = IEEE80211_T_DS;


 ic->ic_caps =
    IEEE80211_C_STA
  | IEEE80211_C_IBSS
  | IEEE80211_C_MONITOR
  | IEEE80211_C_PMGT
  | IEEE80211_C_SHPREAMBLE
  | IEEE80211_C_WPA
  ;


 val = ipw_read_prom_word(sc, IPW_EEPROM_MAC + 0);
 ic->ic_macaddr[0] = val >> 8;
 ic->ic_macaddr[1] = val & 0xff;
 val = ipw_read_prom_word(sc, IPW_EEPROM_MAC + 1);
 ic->ic_macaddr[2] = val >> 8;
 ic->ic_macaddr[3] = val & 0xff;
 val = ipw_read_prom_word(sc, IPW_EEPROM_MAC + 2);
 ic->ic_macaddr[4] = val >> 8;
 ic->ic_macaddr[5] = val & 0xff;

 sc->chanmask = ipw_read_chanmask(sc);
 ipw_getradiocaps(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
     ic->ic_channels);


 if (!(ipw_read_prom_word(sc, IPW_EEPROM_RADIO) & 8))
  sc->flags |= IPW_FLAG_HAS_RADIO_SWITCH;

 ieee80211_ifattach(ic);
 ic->ic_scan_start = ipw_scan_start;
 ic->ic_scan_end = ipw_scan_end;
 ic->ic_getradiocaps = ipw_getradiocaps;
 ic->ic_set_channel = ipw_set_channel;
 ic->ic_scan_curchan = ipw_scan_curchan;
 ic->ic_scan_mindwell = ipw_scan_mindwell;
 ic->ic_raw_xmit = ipw_raw_xmit;
 ic->ic_vap_create = ipw_vap_create;
 ic->ic_vap_delete = ipw_vap_delete;
 ic->ic_transmit = ipw_transmit;
 ic->ic_parent = ipw_parent;

 ieee80211_radiotap_attach(ic,
     &sc->sc_txtap.wt_ihdr, sizeof(sc->sc_txtap),
  IPW_TX_RADIOTAP_PRESENT,
     &sc->sc_rxtap.wr_ihdr, sizeof(sc->sc_rxtap),
  IPW_RX_RADIOTAP_PRESENT);




 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO, "radio",
     CTLTYPE_INT | CTLFLAG_RD, sc, 0, ipw_sysctl_radio, "I",
     "radio transmitter switch state (0=off, 1=on)");

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO, "stats",
     CTLTYPE_OPAQUE | CTLFLAG_RD, sc, 0, ipw_sysctl_stats, "S",
     "statistics");




 error = bus_setup_intr(dev, sc->irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), ipw_intr, sc, &sc->sc_ih);
 if (error != 0) {
  device_printf(dev, "could not set up interrupt\n");
  goto fail3;
 }

 if (bootverbose)
  ieee80211_announce(ic);

 return 0;
fail3:
 ipw_release(sc);
fail2:
 bus_release_resource(dev, SYS_RES_IRQ, rman_get_rid(sc->irq), sc->irq);
fail1:
 bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(sc->mem),
     sc->mem);
fail:
 mtx_destroy(&sc->sc_mtx);
 return ENXIO;
}
