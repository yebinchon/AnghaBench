
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
struct ieee80211com {int ic_txpowlimit; int ic_flags; } ;
struct rt2560_softc {int rf_rev; int * txpow; struct ieee80211com sc_ic; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {int chan; int r1; int r2; int r4; } ;


 int DPRINTFN (struct rt2560_softc*,int,char*,int,int) ;
 int IEEE80211_CHAN_ANY ;
 int IEEE80211_F_SCAN ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel*) ;
 int KASSERT (int,char*) ;
 int RAL_READ (struct rt2560_softc*,int ) ;
 int RAL_RF1 ;
 int RAL_RF2 ;
 int RAL_RF3 ;
 int RAL_RF4 ;
 int RT2560_CNT0 ;
 int RT2560_JAPAN_FILTER ;







 int ieee80211_chan2ieee (struct ieee80211com*,struct ieee80211_channel*) ;
 int min (int ,int) ;
 int printf (char*,int) ;
 int rt2560_bbp_read (struct rt2560_softc*,int) ;
 int rt2560_bbp_write (struct rt2560_softc*,int,int) ;
 int* rt2560_rf2522_r2 ;
 int* rt2560_rf2523_r2 ;
 int* rt2560_rf2524_r2 ;
 int* rt2560_rf2525_hi_r2 ;
 int* rt2560_rf2525_r2 ;
 int* rt2560_rf2525e_r2 ;
 int* rt2560_rf2526_hi_r2 ;
 int* rt2560_rf2526_r2 ;
 TYPE_1__* rt2560_rf5222 ;
 int rt2560_rf_write (struct rt2560_softc*,int ,int) ;

__attribute__((used)) static void
rt2560_set_chan(struct rt2560_softc *sc, struct ieee80211_channel *c)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint8_t power, tmp;
 u_int i, chan;

 chan = ieee80211_chan2ieee(ic, c);
 KASSERT(chan != 0 && chan != IEEE80211_CHAN_ANY, ("chan 0x%x", chan));

 if (IEEE80211_IS_CHAN_2GHZ(c))
  power = min(sc->txpow[chan - 1], 31);
 else
  power = 31;


 power -= (100 - ic->ic_txpowlimit) / 8;

 DPRINTFN(sc, 2, "setting channel to %u, txpower to %u\n", chan, power);

 switch (sc->rf_rev) {
 case 134:
  rt2560_rf_write(sc, RAL_RF1, 0x00814);
  rt2560_rf_write(sc, RAL_RF2, rt2560_rf2522_r2[chan - 1]);
  rt2560_rf_write(sc, RAL_RF3, power << 7 | 0x00040);
  break;

 case 133:
  rt2560_rf_write(sc, RAL_RF1, 0x08804);
  rt2560_rf_write(sc, RAL_RF2, rt2560_rf2523_r2[chan - 1]);
  rt2560_rf_write(sc, RAL_RF3, power << 7 | 0x38044);
  rt2560_rf_write(sc, RAL_RF4, (chan == 14) ? 0x00280 : 0x00286);
  break;

 case 132:
  rt2560_rf_write(sc, RAL_RF1, 0x0c808);
  rt2560_rf_write(sc, RAL_RF2, rt2560_rf2524_r2[chan - 1]);
  rt2560_rf_write(sc, RAL_RF3, power << 7 | 0x00040);
  rt2560_rf_write(sc, RAL_RF4, (chan == 14) ? 0x00280 : 0x00286);
  break;

 case 131:
  rt2560_rf_write(sc, RAL_RF1, 0x08808);
  rt2560_rf_write(sc, RAL_RF2, rt2560_rf2525_hi_r2[chan - 1]);
  rt2560_rf_write(sc, RAL_RF3, power << 7 | 0x18044);
  rt2560_rf_write(sc, RAL_RF4, (chan == 14) ? 0x00280 : 0x00286);

  rt2560_rf_write(sc, RAL_RF1, 0x08808);
  rt2560_rf_write(sc, RAL_RF2, rt2560_rf2525_r2[chan - 1]);
  rt2560_rf_write(sc, RAL_RF3, power << 7 | 0x18044);
  rt2560_rf_write(sc, RAL_RF4, (chan == 14) ? 0x00280 : 0x00286);
  break;

 case 130:
  rt2560_rf_write(sc, RAL_RF1, 0x08808);
  rt2560_rf_write(sc, RAL_RF2, rt2560_rf2525e_r2[chan - 1]);
  rt2560_rf_write(sc, RAL_RF3, power << 7 | 0x18044);
  rt2560_rf_write(sc, RAL_RF4, (chan == 14) ? 0x00286 : 0x00282);
  break;

 case 129:
  rt2560_rf_write(sc, RAL_RF2, rt2560_rf2526_hi_r2[chan - 1]);
  rt2560_rf_write(sc, RAL_RF4, (chan & 1) ? 0x00386 : 0x00381);
  rt2560_rf_write(sc, RAL_RF1, 0x08804);

  rt2560_rf_write(sc, RAL_RF2, rt2560_rf2526_r2[chan - 1]);
  rt2560_rf_write(sc, RAL_RF3, power << 7 | 0x18044);
  rt2560_rf_write(sc, RAL_RF4, (chan & 1) ? 0x00386 : 0x00381);
  break;


 case 128:
  for (i = 0; rt2560_rf5222[i].chan != chan; i++);

  rt2560_rf_write(sc, RAL_RF1, rt2560_rf5222[i].r1);
  rt2560_rf_write(sc, RAL_RF2, rt2560_rf5222[i].r2);
  rt2560_rf_write(sc, RAL_RF3, power << 7 | 0x00040);
  rt2560_rf_write(sc, RAL_RF4, rt2560_rf5222[i].r4);
  break;
 default:
          printf("unknown ral rev=%d\n", sc->rf_rev);
 }


 if ((ic->ic_flags & IEEE80211_F_SCAN) == 0) {

  tmp = rt2560_bbp_read(sc, 70);

  tmp &= ~RT2560_JAPAN_FILTER;
  if (chan == 14)
   tmp |= RT2560_JAPAN_FILTER;

  rt2560_bbp_write(sc, 70, tmp);


  RAL_READ(sc, RT2560_CNT0);
 }
}
