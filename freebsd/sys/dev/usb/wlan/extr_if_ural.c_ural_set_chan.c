
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ieee80211com {int ic_txpowlimit; scalar_t__ ic_opmode; int ic_flags; } ;
struct ural_softc {int rf_rev; int * txpow; struct ieee80211com sc_ic; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {int chan; int r1; int r2; int r4; } ;


 int DPRINTFN (int,char*,int,int) ;
 int IEEE80211_CHAN_ANY ;
 int IEEE80211_F_SCAN ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_M_MONITOR ;
 int RAL_JAPAN_FILTER ;
 int RAL_RF1 ;
 int RAL_RF2 ;
 int RAL_RF3 ;
 int RAL_RF4 ;







 int RAL_STA_CSR0 ;
 int hz ;
 int ieee80211_chan2ieee (struct ieee80211com*,struct ieee80211_channel*) ;
 int min (int ,int) ;
 int ural_bbp_read (struct ural_softc*,int) ;
 int ural_bbp_write (struct ural_softc*,int,int) ;
 int ural_disable_rf_tune (struct ural_softc*) ;
 int ural_pause (struct ural_softc*,int) ;
 int ural_read (struct ural_softc*,int ) ;
 int* ural_rf2522_r2 ;
 int* ural_rf2523_r2 ;
 int* ural_rf2524_r2 ;
 int* ural_rf2525_hi_r2 ;
 int* ural_rf2525_r2 ;
 int* ural_rf2525e_r2 ;
 int* ural_rf2526_hi_r2 ;
 int* ural_rf2526_r2 ;
 TYPE_1__* ural_rf5222 ;
 int ural_rf_write (struct ural_softc*,int ,int) ;
 int ural_set_basicrates (struct ural_softc*,struct ieee80211_channel*) ;

__attribute__((used)) static void
ural_set_chan(struct ural_softc *sc, struct ieee80211_channel *c)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint8_t power, tmp;
 int i, chan;

 chan = ieee80211_chan2ieee(ic, c);
 if (chan == 0 || chan == IEEE80211_CHAN_ANY)
  return;

 if (IEEE80211_IS_CHAN_2GHZ(c))
  power = min(sc->txpow[chan - 1], 31);
 else
  power = 31;


 power -= (100 - ic->ic_txpowlimit) / 8;

 DPRINTFN(2, "setting channel to %u, txpower to %u\n", chan, power);

 switch (sc->rf_rev) {
 case 134:
  ural_rf_write(sc, RAL_RF1, 0x00814);
  ural_rf_write(sc, RAL_RF2, ural_rf2522_r2[chan - 1]);
  ural_rf_write(sc, RAL_RF3, power << 7 | 0x00040);
  break;

 case 133:
  ural_rf_write(sc, RAL_RF1, 0x08804);
  ural_rf_write(sc, RAL_RF2, ural_rf2523_r2[chan - 1]);
  ural_rf_write(sc, RAL_RF3, power << 7 | 0x38044);
  ural_rf_write(sc, RAL_RF4, (chan == 14) ? 0x00280 : 0x00286);
  break;

 case 132:
  ural_rf_write(sc, RAL_RF1, 0x0c808);
  ural_rf_write(sc, RAL_RF2, ural_rf2524_r2[chan - 1]);
  ural_rf_write(sc, RAL_RF3, power << 7 | 0x00040);
  ural_rf_write(sc, RAL_RF4, (chan == 14) ? 0x00280 : 0x00286);
  break;

 case 131:
  ural_rf_write(sc, RAL_RF1, 0x08808);
  ural_rf_write(sc, RAL_RF2, ural_rf2525_hi_r2[chan - 1]);
  ural_rf_write(sc, RAL_RF3, power << 7 | 0x18044);
  ural_rf_write(sc, RAL_RF4, (chan == 14) ? 0x00280 : 0x00286);

  ural_rf_write(sc, RAL_RF1, 0x08808);
  ural_rf_write(sc, RAL_RF2, ural_rf2525_r2[chan - 1]);
  ural_rf_write(sc, RAL_RF3, power << 7 | 0x18044);
  ural_rf_write(sc, RAL_RF4, (chan == 14) ? 0x00280 : 0x00286);
  break;

 case 130:
  ural_rf_write(sc, RAL_RF1, 0x08808);
  ural_rf_write(sc, RAL_RF2, ural_rf2525e_r2[chan - 1]);
  ural_rf_write(sc, RAL_RF3, power << 7 | 0x18044);
  ural_rf_write(sc, RAL_RF4, (chan == 14) ? 0x00286 : 0x00282);
  break;

 case 129:
  ural_rf_write(sc, RAL_RF2, ural_rf2526_hi_r2[chan - 1]);
  ural_rf_write(sc, RAL_RF4, (chan & 1) ? 0x00386 : 0x00381);
  ural_rf_write(sc, RAL_RF1, 0x08804);

  ural_rf_write(sc, RAL_RF2, ural_rf2526_r2[chan - 1]);
  ural_rf_write(sc, RAL_RF3, power << 7 | 0x18044);
  ural_rf_write(sc, RAL_RF4, (chan & 1) ? 0x00386 : 0x00381);
  break;


 case 128:
  for (i = 0; ural_rf5222[i].chan != chan; i++);

  ural_rf_write(sc, RAL_RF1, ural_rf5222[i].r1);
  ural_rf_write(sc, RAL_RF2, ural_rf5222[i].r2);
  ural_rf_write(sc, RAL_RF3, power << 7 | 0x00040);
  ural_rf_write(sc, RAL_RF4, ural_rf5222[i].r4);
  break;
 }

 if (ic->ic_opmode != IEEE80211_M_MONITOR &&
     (ic->ic_flags & IEEE80211_F_SCAN) == 0) {

  tmp = ural_bbp_read(sc, 70);

  tmp &= ~RAL_JAPAN_FILTER;
  if (chan == 14)
   tmp |= RAL_JAPAN_FILTER;

  ural_bbp_write(sc, 70, tmp);


  ural_read(sc, RAL_STA_CSR0);

  ural_pause(sc, hz / 100);
  ural_disable_rf_tune(sc);
 }



 ural_set_basicrates(sc, c);


 ural_pause(sc, hz / 100);
}
