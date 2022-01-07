
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211com {scalar_t__ ic_curmode; } ;
struct rt2860_softc {struct ieee80211com sc_ic; } ;


 int DELAY (int) ;
 int DPRINTF (char*) ;
 scalar_t__ IEEE80211_M_STA ;
 int RAL_BARRIER_WRITE (struct rt2860_softc*) ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT2860_DEBUG ;
 int RT2860_MAC_RX_EN ;
 int RT2860_MAC_SRST ;
 int RT2860_MAC_SYS_CTRL ;
 int RT2860_MAC_TX_EN ;

__attribute__((used)) static void
rt2860_updatestats(struct rt2860_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;







 if (ic->ic_curmode != IEEE80211_M_STA) {

  uint32_t tmp = RAL_READ(sc, RT2860_DEBUG);
  if ((tmp & (1 << 29)) && (tmp & (1 << 7 | 1 << 5))) {

   DPRINTF(("CTS-to-self livelock detected\n"));
   RAL_WRITE(sc, RT2860_MAC_SYS_CTRL, RT2860_MAC_SRST);
   RAL_BARRIER_WRITE(sc);
   DELAY(1);
   RAL_WRITE(sc, RT2860_MAC_SYS_CTRL,
       RT2860_MAC_RX_EN | RT2860_MAC_TX_EN);
  }
 }
}
