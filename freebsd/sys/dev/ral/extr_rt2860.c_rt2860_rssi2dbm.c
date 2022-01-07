
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int u_int ;
struct ieee80211com {struct ieee80211_channel* ic_curchan; } ;
struct rt2860_softc {int* rssi_5ghz; int* lna; int* rssi_2ghz; struct ieee80211com sc_ic; } ;
struct ieee80211_channel {int dummy; } ;
typedef size_t int8_t ;


 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel*) ;
 int ieee80211_chan2ieee (struct ieee80211com*,struct ieee80211_channel*) ;

__attribute__((used)) static int8_t
rt2860_rssi2dbm(struct rt2860_softc *sc, uint8_t rssi, uint8_t rxchain)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211_channel *c = ic->ic_curchan;
 int delta;

 if (IEEE80211_IS_CHAN_5GHZ(c)) {
  u_int chan = ieee80211_chan2ieee(ic, c);
  delta = sc->rssi_5ghz[rxchain];


  if (chan <= 64)
   delta -= sc->lna[1];
  else if (chan <= 128)
   delta -= sc->lna[2];
  else
   delta -= sc->lna[3];
 } else
  delta = sc->rssi_2ghz[rxchain] - sc->lna[0];

 return -12 - delta - rssi;
}
