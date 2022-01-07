
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ic_nrunning; } ;
struct mwl_softc {TYPE_1__ sc_ic; } ;


 int EDOOFUS ;
 int MWL_LOCK (struct mwl_softc*) ;
 int MWL_UNLOCK (struct mwl_softc*) ;
 int ieee80211_start_all (TYPE_1__*) ;
 int mwl_init (struct mwl_softc*) ;

void
mwl_resume(struct mwl_softc *sc)
{
 int error = EDOOFUS;

 MWL_LOCK(sc);
 if (sc->sc_ic.ic_nrunning > 0)
  error = mwl_init(sc);
 MWL_UNLOCK(sc);

 if (error == 0)
  ieee80211_start_all(&sc->sc_ic);
}
