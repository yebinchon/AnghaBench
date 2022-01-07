
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_vap {struct ieee80211_key** keys; } ;
struct rtwn_softc {scalar_t__ sc_hwcrypto; } ;
struct ieee80211_key {int dummy; } ;


 int IEEE80211_WEP_NKID ;
 scalar_t__ RTWN_CRYPTO_FULL ;
 int rtwn_key_set_cb0 (struct rtwn_softc*,struct ieee80211_key const*) ;

int
rtwn_init_static_keys(struct rtwn_softc *sc, struct rtwn_vap *rvp)
{
 int i, error;

 if (sc->sc_hwcrypto != RTWN_CRYPTO_FULL)
  return (0);

 for (i = 0; i < IEEE80211_WEP_NKID; i++) {
  const struct ieee80211_key *k = rvp->keys[i];
  if (k != ((void*)0)) {
   error = rtwn_key_set_cb0(sc, k);
   if (error != 0)
    return (error);
  }
 }

 return (0);
}
