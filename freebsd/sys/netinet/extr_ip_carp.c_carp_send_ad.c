
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct carp_softc {TYPE_1__* sc_carpdev; } ;
struct TYPE_2__ {int if_vnet; } ;


 int CARP_LOCK_ASSERT (struct carp_softc*) ;
 int CARP_UNLOCK (struct carp_softc*) ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int carp_send_ad_locked (struct carp_softc*) ;

__attribute__((used)) static void
carp_send_ad(void *v)
{
 struct carp_softc *sc = v;

 CARP_LOCK_ASSERT(sc);
 CURVNET_SET(sc->sc_carpdev->if_vnet);
 carp_send_ad_locked(sc);
 CURVNET_RESTORE();
 CARP_UNLOCK(sc);
}
