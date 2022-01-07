
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* arswitch_vlan_set_pvid ) (struct arswitch_softc*,int ,int ) ;} ;
struct arswitch_softc {TYPE_1__ hal; } ;
struct TYPE_5__ {int es_pvid; int es_port; } ;
typedef TYPE_2__ etherswitch_port_t ;


 int ARSWITCH_LOCK (struct arswitch_softc*) ;
 int ARSWITCH_UNLOCK (struct arswitch_softc*) ;
 int stub1 (struct arswitch_softc*,int ,int ) ;

__attribute__((used)) static int
ar8327_port_vlan_setup(struct arswitch_softc *sc, etherswitch_port_t *p)
{



 ARSWITCH_LOCK(sc);


 if (p->es_pvid != 0)
  sc->hal.arswitch_vlan_set_pvid(sc, p->es_port, p->es_pvid);






 ARSWITCH_UNLOCK(sc);
 return (0);
}
