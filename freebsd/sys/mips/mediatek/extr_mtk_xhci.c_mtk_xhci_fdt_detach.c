
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
 int xhci_uninit (struct xhci_softc*) ;

__attribute__((used)) static int
mtk_xhci_fdt_detach(device_t self)
{
 struct xhci_softc *sc = device_get_softc(self);
 int err;


 device_delete_children(self);

 if (sc->sc_irq_res && sc->sc_intr_hdl) {



  xhci_uninit(sc);

  err = bus_teardown_intr(self, sc->sc_irq_res, sc->sc_intr_hdl);
  if (err)
   device_printf(self, "Could not tear down irq, %d\n",
       err);
  sc->sc_intr_hdl = ((void*)0);
 }
 if (sc->sc_irq_res) {
  bus_release_resource(self, SYS_RES_IRQ, 0,
      sc->sc_irq_res);
  sc->sc_irq_res = ((void*)0);
 }
 if (sc->sc_io_res) {
  bus_release_resource(self, SYS_RES_MEMORY, 0,
      sc->sc_io_res);
  sc->sc_io_res = ((void*)0);
 }

 return (0);
}
