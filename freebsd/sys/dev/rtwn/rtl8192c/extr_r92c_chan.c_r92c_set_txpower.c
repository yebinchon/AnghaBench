
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {int ntxchains; int sc_debug; } ;
struct ieee80211_channel {int dummy; } ;
typedef int power ;


 int RTWN_DEBUG_TXPWR ;
 int RTWN_RIDX_CCK1 ;
 int RTWN_RIDX_COUNT ;
 int RTWN_RIDX_HT_MCS (int) ;
 int memset (int*,int ,int) ;
 int printf (char*,int,...) ;
 int r92c_write_txpower (struct rtwn_softc*,int,int*) ;
 int rtwn_r92c_get_txpower (struct rtwn_softc*,int,struct ieee80211_channel*,int*) ;

__attribute__((used)) static void
r92c_set_txpower(struct rtwn_softc *sc, struct ieee80211_channel *c)
{
 uint8_t power[RTWN_RIDX_COUNT];
 int i;

 for (i = 0; i < sc->ntxchains; i++) {
  memset(power, 0, sizeof(power));

  rtwn_r92c_get_txpower(sc, i, c, power);
  r92c_write_txpower(sc, i, power);
 }
}
