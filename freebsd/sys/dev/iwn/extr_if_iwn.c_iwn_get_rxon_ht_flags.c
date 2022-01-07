
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211com {int ic_curhtprotmode; } ;
struct iwn_softc {struct ieee80211com sc_ic; } ;
struct ieee80211_channel {int dummy; } ;



 int IEEE80211_IS_CHAN_HT (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40D (struct ieee80211_channel*) ;
 int IWN_RXON_HT_HT40MINUS ;
 int IWN_RXON_HT_MODEMIXED ;
 int IWN_RXON_HT_MODEPURE40 ;
 int IWN_RXON_HT_PROTMODE (int) ;

__attribute__((used)) static uint32_t
iwn_get_rxon_ht_flags(struct iwn_softc *sc, struct ieee80211_channel *c)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t htflags = 0;

 if (! IEEE80211_IS_CHAN_HT(c))
  return (0);

 htflags |= IWN_RXON_HT_PROTMODE(ic->ic_curhtprotmode);

 if (IEEE80211_IS_CHAN_HT40(c)) {
  switch (ic->ic_curhtprotmode) {
  case 128:
   htflags |= IWN_RXON_HT_MODEPURE40;
   break;
  default:
   htflags |= IWN_RXON_HT_MODEMIXED;
   break;
  }
 }
 if (IEEE80211_IS_CHAN_HT40D(c))
  htflags |= IWN_RXON_HT_HT40MINUS;

 return (htflags);
}
