
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211com {int ic_curchan; } ;
struct bwn_softc {struct ieee80211com sc_ic; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 scalar_t__ IEEE80211_IS_CHAN_2GHZ (int ) ;

uint32_t
bwn_phy_lp_get_default_chan(struct bwn_mac *mac)
{
 struct bwn_softc *sc = mac->mac_sc;
 struct ieee80211com *ic = &sc->sc_ic;

 return (IEEE80211_IS_CHAN_2GHZ(ic->ic_curchan) ? 1 : 36);
}
