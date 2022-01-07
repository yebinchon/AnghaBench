
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_softc {int * sc_msix_res; int * sc_io_res; int * sc_irq_res; int * sc_intr_hdl; int sc_callout; } ;
typedef int device_t ;


 int PCI_XHCI_CBMEM ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_delete_children (int ) ;
 struct xhci_softc* device_get_softc (int ) ;
 int pci_disable_busmaster (int ) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;
 int usb_callout_drain (int *) ;
 int xhci_halt_controller (struct xhci_softc*) ;
 int xhci_reset_controller (struct xhci_softc*) ;
 int xhci_uninit (struct xhci_softc*) ;

__attribute__((used)) static int
xhci_pci_detach(device_t self)
{
 struct xhci_softc *sc = device_get_softc(self);


 device_delete_children(self);

 usb_callout_drain(&sc->sc_callout);
 xhci_halt_controller(sc);
 xhci_reset_controller(sc);

 pci_disable_busmaster(self);

 if (sc->sc_irq_res && sc->sc_intr_hdl) {
  bus_teardown_intr(self, sc->sc_irq_res, sc->sc_intr_hdl);
  sc->sc_intr_hdl = ((void*)0);
 }
 if (sc->sc_irq_res) {
  bus_release_resource(self, SYS_RES_IRQ,
      rman_get_rid(sc->sc_irq_res), sc->sc_irq_res);
  sc->sc_irq_res = ((void*)0);
  pci_release_msi(self);
 }
 if (sc->sc_io_res) {
  bus_release_resource(self, SYS_RES_MEMORY, PCI_XHCI_CBMEM,
      sc->sc_io_res);
  sc->sc_io_res = ((void*)0);
 }
 if (sc->sc_msix_res) {
  bus_release_resource(self, SYS_RES_MEMORY,
      rman_get_rid(sc->sc_msix_res), sc->sc_msix_res);
  sc->sc_msix_res = ((void*)0);
 }

 xhci_uninit(sc);

 return (0);
}
