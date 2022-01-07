
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* mtkswitch_vlan_get_pvid ) (struct mtkswitch_softc*,int ,int *) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;
struct TYPE_5__ {scalar_t__ es_flags; int es_pvid; int es_port; } ;
typedef TYPE_2__ etherswitch_port_t ;


 int MA_NOTOWNED ;
 int MTKSWITCH_LOCK (struct mtkswitch_softc*) ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_UNLOCK (struct mtkswitch_softc*) ;
 int stub1 (struct mtkswitch_softc*,int ,int *) ;

__attribute__((used)) static int
mtkswitch_port_vlan_get(struct mtkswitch_softc *sc, etherswitch_port_t *p)
{

 MTKSWITCH_LOCK_ASSERT(sc, MA_NOTOWNED);
 MTKSWITCH_LOCK(sc);


 sc->hal.mtkswitch_vlan_get_pvid(sc, p->es_port, &p->es_pvid);





 p->es_flags = 0;

 MTKSWITCH_UNLOCK(sc);

 return (0);
}
