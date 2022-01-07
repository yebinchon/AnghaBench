
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int dummy; } ;


 int MWL_LOCK (struct mwl_softc*) ;
 int MWL_UNLOCK (struct mwl_softc*) ;
 int mwl_stop (struct mwl_softc*) ;

void
mwl_suspend(struct mwl_softc *sc)
{

 MWL_LOCK(sc);
 mwl_stop(sc);
 MWL_UNLOCK(sc);
}
