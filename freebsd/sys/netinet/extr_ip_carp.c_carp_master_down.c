
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct carp_softc {scalar_t__ sc_state; TYPE_1__* sc_carpdev; } ;
struct TYPE_2__ {int if_vnet; } ;


 scalar_t__ BACKUP ;
 int CARP_LOCK_ASSERT (struct carp_softc*) ;
 int CARP_UNLOCK (struct carp_softc*) ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int carp_master_down_locked (struct carp_softc*,char*) ;

__attribute__((used)) static void
carp_master_down(void *v)
{
 struct carp_softc *sc = v;

 CARP_LOCK_ASSERT(sc);

 CURVNET_SET(sc->sc_carpdev->if_vnet);
 if (sc->sc_state == BACKUP) {
  carp_master_down_locked(sc, "master timed out");
 }
 CURVNET_RESTORE();

 CARP_UNLOCK(sc);
}
