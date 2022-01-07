
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rt2661_softc {scalar_t__ rssi_5ghz_corr; scalar_t__ rssi_2ghz_corr; int sc_curchan; } ;


 scalar_t__ IEEE80211_IS_CHAN_2GHZ (int ) ;
 int RT2661_NOISE_FLOOR ;

__attribute__((used)) static int
rt2661_get_rssi(struct rt2661_softc *sc, uint8_t raw)
{
 int lna, agc, rssi;

 lna = (raw >> 5) & 0x3;
 agc = raw & 0x1f;

 if (lna == 0) {






  return -1;
 }

 rssi = (2 * agc) - RT2661_NOISE_FLOOR;

 if (IEEE80211_IS_CHAN_2GHZ(sc->sc_curchan)) {
  rssi += sc->rssi_2ghz_corr;

  if (lna == 1)
   rssi -= 64;
  else if (lna == 2)
   rssi -= 74;
  else if (lna == 3)
   rssi -= 90;
 } else {
  rssi += sc->rssi_5ghz_corr;

  if (lna == 1)
   rssi -= 64;
  else if (lna == 2)
   rssi -= 86;
  else if (lna == 3)
   rssi -= 100;
 }
 return rssi;
}
