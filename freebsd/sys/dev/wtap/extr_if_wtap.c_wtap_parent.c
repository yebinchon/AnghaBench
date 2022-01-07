
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wtap_softc {int up; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct wtap_softc* ic_softc; } ;


 int ieee80211_start_all (struct ieee80211com*) ;

__attribute__((used)) static void
wtap_parent(struct ieee80211com *ic)
{
 struct wtap_softc *sc = ic->ic_softc;

 if (ic->ic_nrunning > 0) {
  sc->up = 1;
  ieee80211_start_all(ic);
 } else
  sc->up = 0;
}
