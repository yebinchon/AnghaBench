
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtwn_softc {int (* sc_scan_curchan ) (struct ieee80211_scan_state*,unsigned long) ;int ledlink; } ;
struct ieee80211_scan_state {TYPE_1__* ss_ic; } ;
struct TYPE_2__ {struct rtwn_softc* ic_softc; } ;


 int RTWN_LED_LINK ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 int rtwn_set_led (struct rtwn_softc*,int ,int) ;
 int stub1 (struct ieee80211_scan_state*,unsigned long) ;

__attribute__((used)) static void
rtwn_scan_curchan(struct ieee80211_scan_state *ss, unsigned long maxdwell)
{
 struct rtwn_softc *sc = ss->ss_ic->ic_softc;


 RTWN_LOCK(sc);
 rtwn_set_led(sc, RTWN_LED_LINK, !sc->ledlink);
 RTWN_UNLOCK(sc);

 sc->sc_scan_curchan(ss, maxdwell);
}
