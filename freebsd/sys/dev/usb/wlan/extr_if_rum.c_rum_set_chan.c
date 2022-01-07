
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211com {struct ieee80211_channel* ic_curchan; } ;
struct rum_softc {scalar_t__ rf_rev; int* txpow; int rffreq; struct ieee80211com sc_ic; } ;
struct rfprog {int chan; int r1; int r2; int r3; int r4; } ;
struct ieee80211_channel {scalar_t__ ic_flags; } ;
typedef int int8_t ;


 int IEEE80211_CHAN_ANY ;
 int RT2573_BBPR94_DEFAULT ;
 int RT2573_RF1 ;
 int RT2573_RF2 ;
 int RT2573_RF3 ;
 int RT2573_RF4 ;
 scalar_t__ RT2573_RF_2527 ;
 scalar_t__ RT2573_RF_5225 ;
 int RT2573_SMART_MODE ;
 int hz ;
 int ieee80211_chan2ieee (struct ieee80211com*,struct ieee80211_channel*) ;
 int rum_bbp_read (struct rum_softc*,int) ;
 int rum_bbp_write (struct rum_softc*,int,int) ;
 int rum_pause (struct rum_softc*,int) ;
 struct rfprog* rum_rf5225 ;
 struct rfprog* rum_rf5226 ;
 int rum_rf_write (struct rum_softc*,int ,int) ;
 int rum_select_antenna (struct rum_softc*) ;
 int rum_select_band (struct rum_softc*,struct ieee80211_channel*) ;

__attribute__((used)) static void
rum_set_chan(struct rum_softc *sc, struct ieee80211_channel *c)
{
 struct ieee80211com *ic = &sc->sc_ic;
 const struct rfprog *rfprog;
 uint8_t bbp3, bbp94 = RT2573_BBPR94_DEFAULT;
 int8_t power;
 int i, chan;

 chan = ieee80211_chan2ieee(ic, c);
 if (chan == 0 || chan == IEEE80211_CHAN_ANY)
  return;


 rfprog = (sc->rf_rev == RT2573_RF_5225 ||
    sc->rf_rev == RT2573_RF_2527) ? rum_rf5225 : rum_rf5226;


 for (i = 0; rfprog[i].chan != chan; i++);

 power = sc->txpow[i];
 if (power < 0) {
  bbp94 += power;
  power = 0;
 } else if (power > 31) {
  bbp94 += power - 31;
  power = 31;
 }





 if (c->ic_flags != ic->ic_curchan->ic_flags) {
  rum_select_band(sc, c);
  rum_select_antenna(sc);
 }
 ic->ic_curchan = c;

 rum_rf_write(sc, RT2573_RF1, rfprog[i].r1);
 rum_rf_write(sc, RT2573_RF2, rfprog[i].r2);
 rum_rf_write(sc, RT2573_RF3, rfprog[i].r3 | power << 7);
 rum_rf_write(sc, RT2573_RF4, rfprog[i].r4 | sc->rffreq << 10);

 rum_rf_write(sc, RT2573_RF1, rfprog[i].r1);
 rum_rf_write(sc, RT2573_RF2, rfprog[i].r2);
 rum_rf_write(sc, RT2573_RF3, rfprog[i].r3 | power << 7 | 1);
 rum_rf_write(sc, RT2573_RF4, rfprog[i].r4 | sc->rffreq << 10);

 rum_rf_write(sc, RT2573_RF1, rfprog[i].r1);
 rum_rf_write(sc, RT2573_RF2, rfprog[i].r2);
 rum_rf_write(sc, RT2573_RF3, rfprog[i].r3 | power << 7);
 rum_rf_write(sc, RT2573_RF4, rfprog[i].r4 | sc->rffreq << 10);

 rum_pause(sc, hz / 100);


 bbp3 = rum_bbp_read(sc, 3);

 bbp3 &= ~RT2573_SMART_MODE;
 if (sc->rf_rev == RT2573_RF_5225 || sc->rf_rev == RT2573_RF_2527)
  bbp3 |= RT2573_SMART_MODE;

 rum_bbp_write(sc, 3, bbp3);

 if (bbp94 != RT2573_BBPR94_DEFAULT)
  rum_bbp_write(sc, 94, bbp94);


 rum_pause(sc, hz / 100);
}
