
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ieee80211com {int ic_opmode; int * ic_macaddr; int ic_vaps; } ;
struct otus_softc {struct ieee80211com sc_ic; } ;
struct ieee80211vap {int iv_bss; int * iv_myaddr; } ;
struct ieee80211_node {int ni_bssid; } ;


 int AR_MAC_CAM_DEFAULTS ;
 int AR_MAC_CAM_STA ;
 int AR_MAC_REG_CAM_MODE ;
 int AR_MAC_REG_ENCRYPTION ;
 int AR_MAC_REG_RX_CONTROL ;
 int AR_MAC_REG_SNIFFER ;
 int AR_MAC_RX_CTRL_DEAGG ;
 int AR_MAC_RX_CTRL_PASS_TO_HOST ;
 int AR_MAC_RX_CTRL_SHORT_FILTER ;
 int AR_MAC_SNIFFER_DEFAULTS ;
 int IEEE80211_ADDR_COPY (int *,int ) ;
 int IEEE80211_ADDR_LEN ;


 int OTUS_LOCK_ASSERT (struct otus_softc*) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 struct ieee80211_node* ieee80211_ref_node (int ) ;
 int otus_set_bssid (struct otus_softc*,int *) ;
 int otus_set_macaddr (struct otus_softc*,int const*) ;
 int otus_write (struct otus_softc*,int ,int) ;
 int zero_macaddr ;

__attribute__((used)) static void
otus_set_operating_mode(struct otus_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap;
 uint32_t cam_mode = AR_MAC_CAM_DEFAULTS;
 uint32_t rx_ctrl = AR_MAC_RX_CTRL_DEAGG | AR_MAC_RX_CTRL_SHORT_FILTER;
 uint32_t sniffer = AR_MAC_SNIFFER_DEFAULTS;
 uint32_t enc_mode = 0x78;
 const uint8_t *macaddr;
 uint8_t bssid[IEEE80211_ADDR_LEN];
 struct ieee80211_node *ni;

 OTUS_LOCK_ASSERT(sc);





 IEEE80211_ADDR_COPY(bssid, zero_macaddr);
 vap = TAILQ_FIRST(&ic->ic_vaps);
 macaddr = vap ? vap->iv_myaddr : ic->ic_macaddr;

 switch (ic->ic_opmode) {
 case 128:
  if (vap) {
   ni = ieee80211_ref_node(vap->iv_bss);
   IEEE80211_ADDR_COPY(bssid, ni->ni_bssid);
   ieee80211_free_node(ni);
  }
  cam_mode |= AR_MAC_CAM_STA;
  rx_ctrl |= AR_MAC_RX_CTRL_PASS_TO_HOST;
  break;
 case 129:






 default:
  cam_mode |= AR_MAC_CAM_STA;
  rx_ctrl |= AR_MAC_RX_CTRL_PASS_TO_HOST;
  break;
 }





 otus_write(sc, AR_MAC_REG_SNIFFER, sniffer);
 otus_write(sc, AR_MAC_REG_CAM_MODE, cam_mode);
 otus_write(sc, AR_MAC_REG_ENCRYPTION, enc_mode);
 otus_write(sc, AR_MAC_REG_RX_CONTROL, rx_ctrl);
 otus_set_macaddr(sc, macaddr);
 otus_set_bssid(sc, bssid);

}
