
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_flags; } ;
struct rt2560_softc {struct ieee80211com sc_ic; } ;


 int DPRINTF (struct rt2560_softc*,char*,char*) ;
 int IEEE80211_F_SHPREAMBLE ;
 int RAL_WRITE (struct rt2560_softc*,int ,int) ;
 int RT2560_PLCP11MCSR ;
 int RT2560_PLCP1MCSR ;
 int RT2560_PLCP2MCSR ;
 int RT2560_PLCP5p5MCSR ;

__attribute__((used)) static void
rt2560_update_plcp(struct rt2560_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;


 RAL_WRITE(sc, RT2560_PLCP1MCSR, 0x00700400);

 if (!(ic->ic_flags & IEEE80211_F_SHPREAMBLE)) {

  RAL_WRITE(sc, RT2560_PLCP2MCSR, 0x00380401);
  RAL_WRITE(sc, RT2560_PLCP5p5MCSR, 0x00150402);
  RAL_WRITE(sc, RT2560_PLCP11MCSR, 0x000b8403);
 } else {

  RAL_WRITE(sc, RT2560_PLCP2MCSR, 0x00380409);
  RAL_WRITE(sc, RT2560_PLCP5p5MCSR, 0x0015040a);
  RAL_WRITE(sc, RT2560_PLCP11MCSR, 0x000b840b);
 }

 DPRINTF(sc, "updating PLCP for %s preamble\n",
     (ic->ic_flags & IEEE80211_F_SHPREAMBLE) ? "short" : "long");
}
