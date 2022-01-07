
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lance_softc {int dummy; } ;
struct TYPE_2__ {struct lance_softc lsc; } ;
struct le_lebuffer_softc {int sc_bres; int sc_rres; int sc_ires; TYPE_1__ sc_am7990; int sc_ih; } ;
typedef int device_t ;


 int LE_LOCK_DESTROY (struct lance_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int am7990_detach (TYPE_1__*) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int device_get_parent (int ) ;
 struct le_lebuffer_softc* device_get_softc (int ) ;
 int rman_get_rid (int ) ;

__attribute__((used)) static int
le_lebuffer_detach(device_t dev)
{
 struct le_lebuffer_softc *lesc;
 struct lance_softc *sc;

 lesc = device_get_softc(dev);
 sc = &lesc->sc_am7990.lsc;

 bus_teardown_intr(dev, lesc->sc_ires, lesc->sc_ih);
 am7990_detach(&lesc->sc_am7990);
 bus_release_resource(dev, SYS_RES_IRQ,
     rman_get_rid(lesc->sc_ires), lesc->sc_ires);
 bus_release_resource(dev, SYS_RES_MEMORY,
     rman_get_rid(lesc->sc_rres), lesc->sc_rres);
 bus_release_resource(device_get_parent(dev), SYS_RES_MEMORY,
     rman_get_rid(lesc->sc_bres), lesc->sc_bres);
 LE_LOCK_DESTROY(sc);

 return (0);
}
