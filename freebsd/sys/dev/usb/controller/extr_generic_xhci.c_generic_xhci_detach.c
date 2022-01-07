
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_softc {int * sc_io_res; int * sc_irq_res; int * sc_intr_hdl; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_delete_children (int ) ;
 struct xhci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int rman_get_rid (int *) ;
 int xhci_uninit (struct xhci_softc*) ;

int
generic_xhci_detach(device_t dev)
{
 struct xhci_softc *sc = device_get_softc(dev);
 int err;


 device_delete_children(dev);

 if (sc->sc_irq_res != ((void*)0) && sc->sc_intr_hdl != ((void*)0)) {
  err = bus_teardown_intr(dev, sc->sc_irq_res, sc->sc_intr_hdl);
  if (err != 0)
   device_printf(dev, "Could not tear down irq, %d\n",
       err);
  sc->sc_intr_hdl = ((void*)0);
 }

 if (sc->sc_irq_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IRQ,
      rman_get_rid(sc->sc_irq_res), sc->sc_irq_res);
  sc->sc_irq_res = ((void*)0);
 }

 if (sc->sc_io_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(sc->sc_io_res), sc->sc_io_res);
  sc->sc_io_res = ((void*)0);
 }

 xhci_uninit(sc);

 return (0);
}
