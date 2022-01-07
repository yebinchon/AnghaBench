
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211vap {int iv_bss; TYPE_1__* iv_ic; } ;
struct TYPE_5__ {int wk_macaddr; int wk_flags; void* wk_rxkeyix; void* wk_keyix; } ;
struct ieee80211_node {TYPE_2__ ni_ucastkey; int ni_macaddr; struct ieee80211vap* ni_vap; } ;
struct ath_softc {int dummy; } ;
typedef void* ieee80211_keyix ;
struct TYPE_4__ {struct ath_softc* ic_softc; } ;


 int IEEE80211_ADDR_COPY (int ,int ) ;
 int IEEE80211_KEY_DEVKEY ;
 int ath_key_alloc (struct ieee80211vap*,TYPE_2__*,void**,void**) ;
 int ath_keyset (struct ath_softc*,struct ieee80211vap*,TYPE_2__*,int ) ;

__attribute__((used)) static void
ath_setup_stationkey(struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ath_softc *sc = vap->iv_ic->ic_softc;
 ieee80211_keyix keyix, rxkeyix;


 if (!ath_key_alloc(vap, &ni->ni_ucastkey, &keyix, &rxkeyix)) {






 } else {

  ni->ni_ucastkey.wk_keyix = keyix;
  ni->ni_ucastkey.wk_rxkeyix = rxkeyix;

  ni->ni_ucastkey.wk_flags |= IEEE80211_KEY_DEVKEY;
  IEEE80211_ADDR_COPY(ni->ni_ucastkey.wk_macaddr, ni->ni_macaddr);

  ath_keyset(sc, vap, &ni->ni_ucastkey, vap->iv_bss);
 }
}
