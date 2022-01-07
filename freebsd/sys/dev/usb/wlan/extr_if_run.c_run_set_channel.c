
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_softc {int dummy; } ;
struct ieee80211com {int ic_curchan; struct run_softc* ic_softc; } ;


 int RUN_LOCK (struct run_softc*) ;
 int RUN_UNLOCK (struct run_softc*) ;
 int run_set_chan (struct run_softc*,int ) ;

__attribute__((used)) static void
run_set_channel(struct ieee80211com *ic)
{
 struct run_softc *sc = ic->ic_softc;

 RUN_LOCK(sc);
 run_set_chan(sc, ic->ic_curchan);
 RUN_UNLOCK(sc);

 return;
}
