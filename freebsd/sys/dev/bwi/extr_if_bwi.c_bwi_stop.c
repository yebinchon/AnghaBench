
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {int dummy; } ;


 int BWI_LOCK (struct bwi_softc*) ;
 int BWI_UNLOCK (struct bwi_softc*) ;
 int bwi_stop_locked (struct bwi_softc*,int) ;

__attribute__((used)) static void
bwi_stop(struct bwi_softc *sc, int statechg)
{
 BWI_LOCK(sc);
 bwi_stop_locked(sc, statechg);
 BWI_UNLOCK(sc);
}
