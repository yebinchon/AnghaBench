
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sc_bus; int * sc_io_res; int * sc_irq_res; int * sc_intr_hdl; } ;
typedef TYPE_1__ uhci_softc_t ;
typedef int device_t ;


 int PCI_UHCI_BASE_REG ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_delete_children (int ) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int pci_disable_busmaster (int ) ;
 int uhci_iterate_hw_softc ;
 int uhci_reset (TYPE_1__*) ;
 int usb_bus_mem_free_all (int *,int *) ;

int
uhci_pci_detach(device_t self)
{
 uhci_softc_t *sc = device_get_softc(self);


 device_delete_children(self);





 if (sc->sc_io_res) {
  USB_BUS_LOCK(&sc->sc_bus);


  uhci_reset(sc);

  USB_BUS_UNLOCK(&sc->sc_bus);
 }
 pci_disable_busmaster(self);

 if (sc->sc_irq_res && sc->sc_intr_hdl) {
  int err = bus_teardown_intr(self, sc->sc_irq_res, sc->sc_intr_hdl);

  if (err) {

   device_printf(self, "Could not tear down irq, %d\n",
       err);
  }
  sc->sc_intr_hdl = ((void*)0);
 }
 if (sc->sc_irq_res) {
  bus_release_resource(self, SYS_RES_IRQ, 0, sc->sc_irq_res);
  sc->sc_irq_res = ((void*)0);
 }
 if (sc->sc_io_res) {
  bus_release_resource(self, SYS_RES_IOPORT, PCI_UHCI_BASE_REG,
      sc->sc_io_res);
  sc->sc_io_res = ((void*)0);
 }
 usb_bus_mem_free_all(&sc->sc_bus, &uhci_iterate_hw_softc);

 return (0);
}
