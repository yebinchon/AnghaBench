
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rtwn_softc {scalar_t__ bcn_vaps; scalar_t__ ap_vaps; scalar_t__ nvaps; scalar_t__ mon_vaps; } ;


 int IEEE80211_FC0_SUBTYPE_ASSOC_REQ ;
 int IEEE80211_FC0_SUBTYPE_ASSOC_RESP ;
 int IEEE80211_FC0_SUBTYPE_PROBE_REQ ;
 int IEEE80211_FC0_SUBTYPE_REASSOC_REQ ;
 int IEEE80211_FC0_SUBTYPE_REASSOC_RESP ;
 int R92C_RXFLTMAP0 ;
 int R92C_RXFLTMAP_SUBTYPE (int ) ;
 int rtwn_write_2 (struct rtwn_softc*,int ,int) ;

__attribute__((used)) static void
rtwn_rxfilter_update_mgt(struct rtwn_softc *sc)
{
 uint16_t filter;

 filter = 0x7f7f;
 if (sc->bcn_vaps == 0) {
  filter &= ~(
      R92C_RXFLTMAP_SUBTYPE(IEEE80211_FC0_SUBTYPE_ASSOC_REQ) |
      R92C_RXFLTMAP_SUBTYPE(IEEE80211_FC0_SUBTYPE_REASSOC_REQ) |
      R92C_RXFLTMAP_SUBTYPE(IEEE80211_FC0_SUBTYPE_PROBE_REQ));
 }
 if (sc->ap_vaps == sc->nvaps - sc->mon_vaps) {
  filter &= ~(
      R92C_RXFLTMAP_SUBTYPE(IEEE80211_FC0_SUBTYPE_ASSOC_RESP) |
      R92C_RXFLTMAP_SUBTYPE(IEEE80211_FC0_SUBTYPE_REASSOC_RESP));
 }
 rtwn_write_2(sc, R92C_RXFLTMAP0, filter);
}
