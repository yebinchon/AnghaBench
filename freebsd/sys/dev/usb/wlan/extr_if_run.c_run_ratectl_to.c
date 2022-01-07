
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_softc {int ratectl_task; int sc_ic; } ;


 int ieee80211_runtask (int *,int *) ;

__attribute__((used)) static void
run_ratectl_to(void *arg)
{
 struct run_softc *sc = arg;


 ieee80211_runtask(&sc->sc_ic, &sc->ratectl_task);

}
