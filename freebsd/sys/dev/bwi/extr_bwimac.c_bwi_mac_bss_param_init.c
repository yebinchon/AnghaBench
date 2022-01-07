
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211com {int * ic_sup_rates; } ;
struct ieee80211_rate_table {int dummy; } ;
struct bwi_softc {struct ieee80211com sc_ic; } ;
struct bwi_retry_lim {int lgretry_fb; int lgretry; int shretry_fb; int shretry; } ;
struct bwi_phy {size_t phy_mode; } ;
struct bwi_mac {struct bwi_phy mac_phy; struct bwi_softc* mac_sc; } ;
typedef int lim ;


 int BWI_80211_MOBJ ;
 int BWI_80211_MOBJ_CWMAX ;
 int BWI_80211_MOBJ_CWMIN ;
 int BWI_COMM_MOBJ ;
 int BWI_COMM_MOBJ_PROBE_RESP_TO ;
 int BWI_LGRETRY ;
 int BWI_LGRETRY_FB ;
 int BWI_SHRETRY ;
 int BWI_SHRETRY_FB ;
 int IEEE80211_CHAN_B ;
 int IEEE80211_CHAN_G ;
 int IEEE80211_CW_MAX ;
 int IEEE80211_CW_MIN_0 ;
 int IEEE80211_CW_MIN_1 ;
 size_t IEEE80211_MODE_11B ;
 size_t IEEE80211_MODE_11G ;
 int MOBJ_WRITE_2 (struct bwi_mac*,int ,int ,int) ;
 int bwi_mac_set_ackrates (struct bwi_mac*,struct ieee80211_rate_table const*,int *) ;
 int bwi_mac_set_retry_lim (struct bwi_mac*,struct bwi_retry_lim*) ;
 int bzero (struct bwi_retry_lim*,int) ;
 int ieee80211_find_channel (struct ieee80211com*,int,int ) ;
 struct ieee80211_rate_table* ieee80211_get_ratetable (int ) ;

__attribute__((used)) static void
bwi_mac_bss_param_init(struct bwi_mac *mac)
{
 struct bwi_softc *sc = mac->mac_sc;
 struct bwi_phy *phy = &mac->mac_phy;
 struct ieee80211com *ic = &sc->sc_ic;
 const struct ieee80211_rate_table *rt;
 struct bwi_retry_lim lim;
 uint16_t cw_min;




 bzero(&lim, sizeof(lim));
 lim.shretry = BWI_SHRETRY;
 lim.shretry_fb = BWI_SHRETRY_FB;
 lim.lgretry = BWI_LGRETRY;
 lim.lgretry_fb = BWI_LGRETRY_FB;
 bwi_mac_set_retry_lim(mac, &lim);





 MOBJ_WRITE_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_PROBE_RESP_TO, 1);






 if (phy->phy_mode == IEEE80211_MODE_11B) {
  rt = ieee80211_get_ratetable(
      ieee80211_find_channel(ic, 2412, IEEE80211_CHAN_B));
  bwi_mac_set_ackrates(mac, rt,
      &ic->ic_sup_rates[IEEE80211_MODE_11B]);
 } else {
  rt = ieee80211_get_ratetable(
      ieee80211_find_channel(ic, 2412, IEEE80211_CHAN_G));
  bwi_mac_set_ackrates(mac, rt,
      &ic->ic_sup_rates[IEEE80211_MODE_11G]);
 }




 if (phy->phy_mode == IEEE80211_MODE_11B)
  cw_min = IEEE80211_CW_MIN_0;
 else
  cw_min = IEEE80211_CW_MIN_1;
 MOBJ_WRITE_2(mac, BWI_80211_MOBJ, BWI_80211_MOBJ_CWMIN, cw_min);




 MOBJ_WRITE_2(mac, BWI_80211_MOBJ, BWI_80211_MOBJ_CWMAX,
       IEEE80211_CW_MAX);
}
