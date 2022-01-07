
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int dummy; } ;
struct ieee80211com {struct iwn_softc* ic_softc; } ;


 int IWN_LED_LINK ;
 int IWN_LOCK (struct iwn_softc*) ;
 int IWN_UNLOCK (struct iwn_softc*) ;
 int iwn_set_led (struct iwn_softc*,int ,int,int) ;

__attribute__((used)) static void
iwn_scan_start(struct ieee80211com *ic)
{
 struct iwn_softc *sc = ic->ic_softc;

 IWN_LOCK(sc);

 iwn_set_led(sc, IWN_LED_LINK, 20, 2);
 IWN_UNLOCK(sc);
}
