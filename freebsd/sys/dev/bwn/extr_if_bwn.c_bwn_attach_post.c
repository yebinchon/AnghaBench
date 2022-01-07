
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {int wme_update; } ;
struct ieee80211com {int ic_caps; int ic_headroom; int ic_parent; int ic_transmit; int ic_vap_delete; int ic_vap_create; int ic_set_channel; int ic_scan_end; int ic_scan_start; TYPE_2__ ic_wme; int ic_update_promisc; int ic_updateslot; int ic_raw_xmit; int ic_macaddr; int ic_flags_ext; int ic_opmode; int ic_phytype; int ic_name; struct bwn_softc* ic_softc; } ;
struct bwn_txhdr {int dummy; } ;
struct TYPE_8__ {int wr_ihdr; } ;
struct TYPE_7__ {int wt_ihdr; } ;
struct TYPE_5__ {int board_srom_rev; } ;
struct bwn_softc {TYPE_4__ sc_rx_th; TYPE_3__ sc_tx_th; int sc_dev; TYPE_1__ sc_board_info; struct ieee80211com sc_ic; } ;


 char* BHND_NVAR_ET1MACADDR ;
 char* BHND_NVAR_IL0MACADDR ;
 char* BHND_NVAR_MACADDR ;
 int BHND_NVRAM_TYPE_UINT8_ARRAY ;
 int BWN_RX_RADIOTAP_PRESENT ;
 int BWN_TX_RADIOTAP_PRESENT ;
 int ENXIO ;
 int IEEE80211_C_AHDEMO ;
 int IEEE80211_C_BGSCAN ;
 int IEEE80211_C_MONITOR ;
 int IEEE80211_C_SHPREAMBLE ;
 int IEEE80211_C_SHSLOT ;
 int IEEE80211_C_STA ;
 int IEEE80211_C_TXPMGT ;
 int IEEE80211_C_WME ;
 int IEEE80211_C_WPA ;
 int IEEE80211_FEXT_SWBMISS ;
 int IEEE80211_M_STA ;
 int IEEE80211_T_OFDM ;
 int bhnd_get_core_unit (int ) ;
 int bhnd_nvram_getvar_array (int ,char const*,int ,int,int ) ;
 scalar_t__ bootverbose ;
 int bwn_parent ;
 int bwn_raw_xmit ;
 int bwn_scan_end ;
 int bwn_scan_start ;
 int bwn_set_channel ;
 int bwn_sysctl_node (struct bwn_softc*) ;
 int bwn_transmit ;
 int bwn_update_promisc ;
 int bwn_updateslot ;
 int bwn_vap_create ;
 int bwn_vap_delete ;
 int bwn_wme_update ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 int ieee80211_announce (struct ieee80211com*) ;
 int ieee80211_ifattach (struct ieee80211com*) ;
 int ieee80211_radiotap_attach (struct ieee80211com*,int *,int,int ,int *,int,int ) ;

__attribute__((used)) static int
bwn_attach_post(struct bwn_softc *sc)
{
 struct ieee80211com *ic;
 const char *mac_varname;
 u_int core_unit;
 int error;

 ic = &sc->sc_ic;

 ic->ic_softc = sc;
 ic->ic_name = device_get_nameunit(sc->sc_dev);

 ic->ic_phytype = IEEE80211_T_OFDM;
 ic->ic_opmode = IEEE80211_M_STA;
 ic->ic_caps =
    IEEE80211_C_STA
  | IEEE80211_C_MONITOR
  | IEEE80211_C_AHDEMO
  | IEEE80211_C_SHPREAMBLE
  | IEEE80211_C_SHSLOT
  | IEEE80211_C_WME
  | IEEE80211_C_WPA



  | IEEE80211_C_TXPMGT
  ;

 ic->ic_flags_ext |= IEEE80211_FEXT_SWBMISS;


 core_unit = bhnd_get_core_unit(sc->sc_dev);
 mac_varname = ((void*)0);
 if (sc->sc_board_info.board_srom_rev <= 2) {
  if (core_unit == 0) {
   mac_varname = BHND_NVAR_IL0MACADDR;
  } else if (core_unit == 1) {
   mac_varname = BHND_NVAR_ET1MACADDR;
  }
 } else {
  if (core_unit == 0) {
   mac_varname = BHND_NVAR_MACADDR;
  }
 }

 if (mac_varname == ((void*)0)) {
  device_printf(sc->sc_dev, "missing MAC address variable for "
      "D11 core %u", core_unit);
  return (ENXIO);
 }


 error = bhnd_nvram_getvar_array(sc->sc_dev, mac_varname, ic->ic_macaddr,
     sizeof(ic->ic_macaddr), BHND_NVRAM_TYPE_UINT8_ARRAY);
 if (error) {
  device_printf(sc->sc_dev, "error reading %s: %d\n", mac_varname,
      error);
  return (error);
 }


 ieee80211_ifattach(ic);

 ic->ic_headroom = sizeof(struct bwn_txhdr);


 ic->ic_raw_xmit = bwn_raw_xmit;
 ic->ic_updateslot = bwn_updateslot;
 ic->ic_update_promisc = bwn_update_promisc;
 ic->ic_wme.wme_update = bwn_wme_update;
 ic->ic_scan_start = bwn_scan_start;
 ic->ic_scan_end = bwn_scan_end;
 ic->ic_set_channel = bwn_set_channel;
 ic->ic_vap_create = bwn_vap_create;
 ic->ic_vap_delete = bwn_vap_delete;
 ic->ic_transmit = bwn_transmit;
 ic->ic_parent = bwn_parent;

 ieee80211_radiotap_attach(ic,
     &sc->sc_tx_th.wt_ihdr, sizeof(sc->sc_tx_th),
     BWN_TX_RADIOTAP_PRESENT,
     &sc->sc_rx_th.wr_ihdr, sizeof(sc->sc_rx_th),
     BWN_RX_RADIOTAP_PRESENT);

 bwn_sysctl_node(sc);

 if (bootverbose)
  ieee80211_announce(ic);
 return (0);
}
