
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211com {int ic_flags; } ;
struct run_softc {struct ieee80211com sc_ic; } ;


 int IEEE80211_F_SHPREAMBLE ;
 int RT2860_AUTO_RSP_CFG ;
 int RT2860_CCK_SHORT_EN ;
 int run_read (struct run_softc*,int ,int *) ;
 int run_write (struct run_softc*,int ,int ) ;

__attribute__((used)) static void
run_set_txpreamble(struct run_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t tmp;

 run_read(sc, RT2860_AUTO_RSP_CFG, &tmp);
 if (ic->ic_flags & IEEE80211_F_SHPREAMBLE)
  tmp |= RT2860_CCK_SHORT_EN;
 else
  tmp &= ~RT2860_CCK_SHORT_EN;
 run_write(sc, RT2860_AUTO_RSP_CFG, tmp);
}
