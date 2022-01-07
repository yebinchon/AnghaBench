
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211com {int ic_caps; int ic_headroom; int ic_curchan; int ic_parent; int ic_transmit; int ic_set_channel; int (* ic_getradiocaps ) (struct ieee80211com*,int ,int *,int ) ;int ic_scan_end; int ic_scan_start; int ic_updateslot; int ic_raw_xmit; int ic_vap_delete; int ic_vap_create; int ic_opmode; int ic_name; int ic_channels; int ic_nchans; struct bwi_softc* ic_softc; int ic_macaddr; int ic_phytype; } ;
struct bwi_txbuf_hdr {int dummy; } ;
struct TYPE_4__ {int wr_ihdr; } ;
struct TYPE_3__ {int wt_ihdr; } ;
struct bwi_softc {int sc_fw_version; int sc_led_idle; int sc_led_blink; int sc_txpwr_calib; int sc_nmac; int sc_debug; TYPE_2__ sc_rx_th; TYPE_1__ sc_tx_th; int sc_rates; int sc_locale; int sc_mtx; int sc_watchdog_timer; struct bwi_mac* sc_mac; int sc_com_regwin; scalar_t__ sc_led_ticks; int sc_snd; int sc_calib_ch; int sc_restart_task; int sc_tq; int sc_dev; struct ieee80211com sc_ic; } ;
struct bwi_regwin {int dummy; } ;
struct bwi_phy {scalar_t__ phy_mode; } ;
struct bwi_mac {struct bwi_phy mac_phy; struct bwi_regwin mac_regwin; } ;
typedef int device_t ;


 int BWI_CLOCK_MODE_FAST ;
 int BWI_DBG_ATTACH ;
 int BWI_FW_VERSION3 ;
 int BWI_LOCK_DESTROY (struct bwi_softc*) ;
 int BWI_LOCK_INIT (struct bwi_softc*) ;
 scalar_t__ BWI_REGWIN_EXIST (int *) ;
 int BWI_RX_RADIOTAP_PRESENT ;
 int BWI_SPROM_11A_EADDR ;
 int BWI_SPROM_11BG_EADDR ;
 int BWI_SPROM_CARD_INFO ;
 int BWI_SPROM_CARD_INFO_LOCALE ;
 int BWI_TX_RADIOTAP_PRESENT ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int DPRINTF (struct bwi_softc*,int ,char*,int ) ;
 int ENXIO ;
 int IEEE80211_CHAN_MAX ;
 int IEEE80211_C_BGSCAN ;
 int IEEE80211_C_MONITOR ;
 int IEEE80211_C_SHPREAMBLE ;
 int IEEE80211_C_SHSLOT ;
 int IEEE80211_C_STA ;
 int IEEE80211_C_WPA ;
 scalar_t__ IEEE80211_IS_MULTICAST (int ) ;
 scalar_t__ IEEE80211_MODE_11A ;
 scalar_t__ IEEE80211_MODE_11B ;
 scalar_t__ IEEE80211_MODE_11G ;
 int IEEE80211_M_STA ;
 int IEEE80211_T_DS ;
 int IEEE80211_T_OFDM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int OID_AUTO ;
 int PI_NET ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int*,int ,char*) ;
 int SYSCTL_ADD_UINT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int TASK_INIT (int *,int ,int ,struct bwi_softc*) ;
 int __SHIFTOUT (int ,int ) ;
 scalar_t__ bootverbose ;
 int bwi_bbp_attach (struct bwi_softc*) ;
 int bwi_bbp_power_off (struct bwi_softc*) ;
 int bwi_bbp_power_on (struct bwi_softc*,int ) ;
 int bwi_bus_attach (struct bwi_softc*) ;
 int bwi_debug ;
 int bwi_dma_alloc (struct bwi_softc*) ;
 int bwi_get_card_flags (struct bwi_softc*) ;
 int bwi_get_eaddr (struct bwi_softc*,int ,int ) ;
 int bwi_get_pwron_delay (struct bwi_softc*) ;
 int bwi_getradiocaps (struct ieee80211com*,int ,int *,int ) ;
 int bwi_led_attach (struct bwi_softc*) ;
 int bwi_mac_fw_alloc (struct bwi_mac*) ;
 int bwi_mac_lateattach (struct bwi_mac*) ;
 int bwi_parent ;
 int bwi_power_on (struct bwi_softc*,int) ;
 int bwi_raw_xmit ;
 int bwi_read_sprom (struct bwi_softc*,int ) ;
 int bwi_regwin_switch (struct bwi_softc*,struct bwi_regwin*,struct bwi_regwin**) ;
 int bwi_restart ;
 int bwi_scan_end ;
 int bwi_scan_start ;
 int bwi_set_channel ;
 int bwi_set_clock_delay (struct bwi_softc*) ;
 int bwi_set_clock_mode (struct bwi_softc*,int ) ;
 int bwi_transmit ;
 int bwi_updateslot ;
 int bwi_vap_create ;
 int bwi_vap_delete ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_nameunit (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,int ,char*) ;
 int hz ;
 int ieee80211_announce (struct ieee80211com*) ;
 int ieee80211_get_ratetable (int ) ;
 int ieee80211_ifattach (struct ieee80211com*) ;
 int ieee80211_radiotap_attach (struct ieee80211com*,int *,int,int ,int *,int,int ) ;
 int ifqmaxlen ;
 int mbufq_init (int *,int ) ;
 int panic (char*,scalar_t__) ;
 int taskqueue_create (char*,int,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;
 scalar_t__ ticks ;

int
bwi_attach(struct bwi_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 device_t dev = sc->sc_dev;
 struct bwi_mac *mac;
 struct bwi_phy *phy;
 int i, error;

 BWI_LOCK_INIT(sc);




 sc->sc_tq = taskqueue_create("bwi_taskq", M_NOWAIT | M_ZERO,
  taskqueue_thread_enqueue, &sc->sc_tq);
 taskqueue_start_threads(&sc->sc_tq, 1, PI_NET, "%s taskq",
  device_get_nameunit(dev));
 TASK_INIT(&sc->sc_restart_task, 0, bwi_restart, sc);
 callout_init_mtx(&sc->sc_calib_ch, &sc->sc_mtx, 0);
 mbufq_init(&sc->sc_snd, ifqmaxlen);




 sc->sc_fw_version = BWI_FW_VERSION3;
 sc->sc_led_idle = (2350 * hz) / 1000;
 sc->sc_led_ticks = ticks - sc->sc_led_idle;
 sc->sc_led_blink = 1;
 sc->sc_txpwr_calib = 1;



 bwi_power_on(sc, 1);

 error = bwi_bbp_attach(sc);
 if (error)
  goto fail;

 error = bwi_bbp_power_on(sc, BWI_CLOCK_MODE_FAST);
 if (error)
  goto fail;

 if (BWI_REGWIN_EXIST(&sc->sc_com_regwin)) {
  error = bwi_set_clock_delay(sc);
  if (error)
   goto fail;

  error = bwi_set_clock_mode(sc, BWI_CLOCK_MODE_FAST);
  if (error)
   goto fail;

  error = bwi_get_pwron_delay(sc);
  if (error)
   goto fail;
 }

 error = bwi_bus_attach(sc);
 if (error)
  goto fail;

 bwi_get_card_flags(sc);

 bwi_led_attach(sc);

 for (i = 0; i < sc->sc_nmac; ++i) {
  struct bwi_regwin *old;

  mac = &sc->sc_mac[i];
  error = bwi_regwin_switch(sc, &mac->mac_regwin, &old);
  if (error)
   goto fail;

  error = bwi_mac_lateattach(mac);
  if (error)
   goto fail;

  error = bwi_regwin_switch(sc, old, ((void*)0));
  if (error)
   goto fail;
 }





 mac = &sc->sc_mac[0];
 phy = &mac->mac_phy;

 bwi_bbp_power_off(sc);

 error = bwi_dma_alloc(sc);
 if (error)
  goto fail;

 error = bwi_mac_fw_alloc(mac);
 if (error)
  goto fail;

 callout_init_mtx(&sc->sc_watchdog_timer, &sc->sc_mtx, 0);




 if (phy->phy_mode == IEEE80211_MODE_11B ||
     phy->phy_mode == IEEE80211_MODE_11G) {
  if (phy->phy_mode == IEEE80211_MODE_11B) {
   ic->ic_phytype = IEEE80211_T_DS;
  } else {
   ic->ic_phytype = IEEE80211_T_OFDM;
  }

  bwi_get_eaddr(sc, BWI_SPROM_11BG_EADDR, ic->ic_macaddr);
  if (IEEE80211_IS_MULTICAST(ic->ic_macaddr)) {
   bwi_get_eaddr(sc, BWI_SPROM_11A_EADDR, ic->ic_macaddr);
   if (IEEE80211_IS_MULTICAST(ic->ic_macaddr)) {
    device_printf(dev,
        "invalid MAC address: %6D\n",
        ic->ic_macaddr, ":");
   }
  }
 } else if (phy->phy_mode == IEEE80211_MODE_11A) {

  error = ENXIO;
  goto fail;
 } else {
  panic("unknown phymode %d\n", phy->phy_mode);
 }


 sc->sc_locale = __SHIFTOUT(bwi_read_sprom(sc, BWI_SPROM_CARD_INFO),
       BWI_SPROM_CARD_INFO_LOCALE);
 DPRINTF(sc, BWI_DBG_ATTACH, "locale: %d\n", sc->sc_locale);


 ic->ic_softc = sc;

 bwi_getradiocaps(ic, IEEE80211_CHAN_MAX, &ic->ic_nchans,
     ic->ic_channels);

 ic->ic_name = device_get_nameunit(dev);
 ic->ic_caps = IEEE80211_C_STA |
        IEEE80211_C_SHSLOT |
        IEEE80211_C_SHPREAMBLE |
        IEEE80211_C_WPA |
        IEEE80211_C_BGSCAN |
        IEEE80211_C_MONITOR;
 ic->ic_opmode = IEEE80211_M_STA;
 ieee80211_ifattach(ic);

 ic->ic_headroom = sizeof(struct bwi_txbuf_hdr);


 ic->ic_vap_create = bwi_vap_create;
 ic->ic_vap_delete = bwi_vap_delete;
 ic->ic_raw_xmit = bwi_raw_xmit;
 ic->ic_updateslot = bwi_updateslot;
 ic->ic_scan_start = bwi_scan_start;
 ic->ic_scan_end = bwi_scan_end;
 ic->ic_getradiocaps = bwi_getradiocaps;
 ic->ic_set_channel = bwi_set_channel;
 ic->ic_transmit = bwi_transmit;
 ic->ic_parent = bwi_parent;

 sc->sc_rates = ieee80211_get_ratetable(ic->ic_curchan);

 ieee80211_radiotap_attach(ic,
     &sc->sc_tx_th.wt_ihdr, sizeof(sc->sc_tx_th),
  BWI_TX_RADIOTAP_PRESENT,
     &sc->sc_rx_th.wr_ihdr, sizeof(sc->sc_rx_th),
  BWI_RX_RADIOTAP_PRESENT);




 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
          SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
          "fw_version", CTLFLAG_RD, &sc->sc_fw_version, 0,
          "Firmware version");
 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
          SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
          "led_idle", CTLFLAG_RW, &sc->sc_led_idle, 0,
          "# ticks before LED enters idle state");
 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
         SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
         "led_blink", CTLFLAG_RW, &sc->sc_led_blink, 0,
         "Allow LED to blink");
 SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
         SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
         "txpwr_calib", CTLFLAG_RW, &sc->sc_txpwr_calib, 0,
         "Enable software TX power calibration");





 if (bootverbose)
  ieee80211_announce(ic);

 return (0);
fail:
 BWI_LOCK_DESTROY(sc);
 return (error);
}
