
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int device_t ;
typedef TYPE_1__* bt3c_softc_p ;
struct TYPE_4__ {int ifq_mtx; } ;
struct TYPE_3__ {TYPE_2__ outq; TYPE_2__ inq; int m; int * node; scalar_t__ iobase_rid; int * iobase; scalar_t__ irq_rid; int * irq; int * irq_cookie; int * ith; } ;


 int IF_DRAIN (TYPE_2__*) ;
 int NG_FREE_M (int ) ;
 int NG_NODE_SET_PRIVATE (int *,int *) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int ng_rmnode_self (int *) ;
 int swi_remove (int *) ;

__attribute__((used)) static int
bt3c_pccard_detach(device_t dev)
{
 bt3c_softc_p sc = (bt3c_softc_p) device_get_softc(dev);

 if (sc == ((void*)0))
  return (0);

 swi_remove(sc->ith);
 sc->ith = ((void*)0);

 bus_teardown_intr(dev, sc->irq, sc->irq_cookie);
 bus_release_resource(dev, SYS_RES_IRQ, sc->irq_rid, sc->irq);
 sc->irq_cookie = ((void*)0);
 sc->irq = ((void*)0);
 sc->irq_rid = 0;

 bus_release_resource(dev, SYS_RES_IOPORT, sc->iobase_rid, sc->iobase);
 sc->iobase = ((void*)0);
 sc->iobase_rid = 0;

 if (sc->node != ((void*)0)) {
  NG_NODE_SET_PRIVATE(sc->node, ((void*)0));
  ng_rmnode_self(sc->node);
  sc->node = ((void*)0);
 }

 NG_FREE_M(sc->m);
 IF_DRAIN(&sc->inq);
 IF_DRAIN(&sc->outq);

 mtx_destroy(&sc->inq.ifq_mtx);
 mtx_destroy(&sc->outq.ifq_mtx);

 return (0);
}
