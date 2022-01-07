
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rum_softc {int dummy; } ;
struct ieee80211vap {struct ieee80211_key const* iv_nw_keys; TYPE_1__* iv_ic; } ;
struct ieee80211_key {int wk_flags; } ;
struct TYPE_2__ {struct rum_softc* ic_softc; } ;


 int IEEE80211_KEY_SWCRYPT ;
 size_t IEEE80211_WEP_NKID ;
 int rum_cmd_sleepable (struct rum_softc*,struct ieee80211_key const*,int,int ,int ) ;
 int rum_group_key_del_cb ;
 int rum_pair_key_del_cb ;

__attribute__((used)) static int
rum_key_delete(struct ieee80211vap *vap, const struct ieee80211_key *k)
{
 struct rum_softc *sc = vap->iv_ic->ic_softc;
 int group;

 if (k->wk_flags & IEEE80211_KEY_SWCRYPT) {

  return 1;
 }

 group = k >= &vap->iv_nw_keys[0] && k < &vap->iv_nw_keys[IEEE80211_WEP_NKID];

 return !rum_cmd_sleepable(sc, k, sizeof(*k), 0,
     group ? rum_group_key_del_cb : rum_pair_key_del_cb);
}
