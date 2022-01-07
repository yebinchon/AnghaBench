
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211com {int ic_flags; } ;
struct rt2860_softc {struct ieee80211com sc_ic; } ;


 int IEEE80211_F_SHPREAMBLE ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int ) ;
 int RT2860_AUTO_RSP_CFG ;
 int RT2860_CCK_SHORT_EN ;

__attribute__((used)) static void
rt2860_set_txpreamble(struct rt2860_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 uint32_t tmp;

 tmp = RAL_READ(sc, RT2860_AUTO_RSP_CFG);
 tmp &= ~RT2860_CCK_SHORT_EN;
 if (ic->ic_flags & IEEE80211_F_SHPREAMBLE)
  tmp |= RT2860_CCK_SHORT_EN;
 RAL_WRITE(sc, RT2860_AUTO_RSP_CFG, tmp);
}
