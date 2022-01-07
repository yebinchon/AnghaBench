
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtballoon_softc {int dummy; } ;


 int VTBALLOON_LOCK (struct vtballoon_softc*) ;
 int VTBALLOON_UNLOCK (struct vtballoon_softc*) ;
 int wakeup_one (struct vtballoon_softc*) ;

__attribute__((used)) static void
vtballoon_vq_intr(void *xsc)
{
 struct vtballoon_softc *sc;

 sc = xsc;

 VTBALLOON_LOCK(sc);
 wakeup_one(sc);
 VTBALLOON_UNLOCK(sc);
}
