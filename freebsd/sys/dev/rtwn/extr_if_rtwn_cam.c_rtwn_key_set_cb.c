
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_key {int dummy; } ;
union sec_param {struct ieee80211_key key; } ;
struct rtwn_softc {int dummy; } ;


 int rtwn_key_set_cb0 (struct rtwn_softc*,struct ieee80211_key const*) ;

__attribute__((used)) static void
rtwn_key_set_cb(struct rtwn_softc *sc, union sec_param *data)
{
 const struct ieee80211_key *k = &data->key;

 (void) rtwn_key_set_cb0(sc, k);
}
