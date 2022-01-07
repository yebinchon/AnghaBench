
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sc_bus; int * sc_io_res; int * sc_irq_res; int * sc_intr_hdl; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int device_t ;


 int BHND_ERROR_DEV (int ,char*,int) ;
 int EHCI_USBINTR ;
 int EWRITE4 (TYPE_1__*,int ,int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_BRIDGE_INTR_MASK ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_delete_children (int ) ;
 TYPE_1__* device_get_softc (int ) ;
 int ehci_detach (TYPE_1__*) ;
 int ehci_iterate_hw_softc ;
 int usb_bus_mem_free_all (int *,int *) ;

__attribute__((used)) static int
bhnd_ehci_detach(device_t self)
{
 ehci_softc_t *sc;
 int err;

 sc = device_get_softc(self);


 device_delete_children(self);
  if (sc->sc_irq_res && sc->sc_intr_hdl) {



  ehci_detach(sc);

  err = bus_teardown_intr(self, sc->sc_irq_res, sc->sc_intr_hdl);

  if (err)

   BHND_ERROR_DEV(self, "Could not tear down irq, %d", err);

  sc->sc_intr_hdl = ((void*)0);
 }
  if (sc->sc_irq_res) {
  bus_release_resource(self, SYS_RES_IRQ, 0, sc->sc_irq_res);
  sc->sc_irq_res = ((void*)0);
 }
 if (sc->sc_io_res) {
  bus_release_resource(self, SYS_RES_MEMORY, 0, sc->sc_io_res);
  sc->sc_io_res = ((void*)0);
 }
 usb_bus_mem_free_all(&sc->sc_bus, &ehci_iterate_hw_softc);

 return (0);
}
