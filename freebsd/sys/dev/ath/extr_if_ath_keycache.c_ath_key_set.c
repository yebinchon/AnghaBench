
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {int iv_bss; TYPE_1__* iv_ic; } ;
struct ieee80211_key {int dummy; } ;
struct ath_softc {int dummy; } ;
struct TYPE_2__ {struct ath_softc* ic_softc; } ;


 int ath_keyset (struct ath_softc*,struct ieee80211vap*,struct ieee80211_key const*,int ) ;

int
ath_key_set(struct ieee80211vap *vap, const struct ieee80211_key *k)
{
 struct ath_softc *sc = vap->iv_ic->ic_softc;

 return ath_keyset(sc, vap, k, vap->iv_bss);
}
