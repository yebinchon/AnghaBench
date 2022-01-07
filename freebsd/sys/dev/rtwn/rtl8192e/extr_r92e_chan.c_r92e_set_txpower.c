
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {int ntxchains; } ;
struct ieee80211_channel {int dummy; } ;
typedef int power ;


 int RTWN_RIDX_COUNT ;
 int memset (int *,int ,int) ;
 int r92c_write_txpower (struct rtwn_softc*,int,int *) ;
 int r92e_get_txpower (struct rtwn_softc*,int,struct ieee80211_channel*,int *) ;

__attribute__((used)) static void
r92e_set_txpower(struct rtwn_softc *sc, struct ieee80211_channel *c)
{
 uint8_t power[RTWN_RIDX_COUNT];
 int i;

 for (i = 0; i < sc->ntxchains; i++) {
  memset(power, 0, sizeof(power));

  r92e_get_txpower(sc, i, c, power);

  r92c_write_txpower(sc, i, power);
 }
}
