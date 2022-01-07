
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf_softc {scalar_t__ res_irq; scalar_t__ res_ioport; int pcf_lock; int rid_ioport; int rid_irq; int intr_cookie; int iicbus; } ;
typedef int device_t ;


 struct pcf_softc* DEVTOSOFTC (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,int ) ;
 int device_delete_child (int ,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
envctrl_detach(device_t dev)
{
 struct pcf_softc *sc;
 int rv;

 sc = DEVTOSOFTC(dev);

 if ((rv = bus_generic_detach(dev)) != 0)
  return (rv);

 if ((rv = device_delete_child(dev, sc->iicbus)) != 0)
  return (rv);

 if (sc->res_irq != 0) {
  bus_teardown_intr(dev, sc->res_irq, sc->intr_cookie);
  bus_release_resource(dev, SYS_RES_IRQ, sc->rid_irq, sc->res_irq);
 }

 bus_release_resource(dev, SYS_RES_MEMORY, sc->rid_ioport, sc->res_ioport);
 mtx_destroy(&sc->pcf_lock);

 return (0);
}
