
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_curchan; } ;
struct bwn_txgain {int member_0; int member_1; int member_2; int member_3; } ;
struct bwn_softc {struct ieee80211com sc_ic; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 scalar_t__ IEEE80211_IS_CHAN_2GHZ (int ) ;
 int bwn_phy_lp_set_bbmult (struct bwn_mac*,int) ;
 int bwn_phy_lp_set_txgain (struct bwn_mac*,struct bwn_txgain*) ;

__attribute__((used)) static void
bwn_phy_lp_txpctl_init(struct bwn_mac *mac)
{
 struct bwn_txgain gain_2ghz = { 4, 12, 12, 0 };
 struct bwn_txgain gain_5ghz = { 7, 15, 14, 0 };
 struct bwn_softc *sc = mac->mac_sc;
 struct ieee80211com *ic = &sc->sc_ic;

 bwn_phy_lp_set_txgain(mac,
     IEEE80211_IS_CHAN_2GHZ(ic->ic_curchan) ? &gain_2ghz : &gain_5ghz);
 bwn_phy_lp_set_bbmult(mac, 150);
}
