
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * bdev; int bus_mtx; } ;
struct xhci_softc {int sc_ctlstep; TYPE_1__ sc_bus; int * sc_intr_hdl; int * sc_irq_res; int sc_vendor; int * sc_msix_res; int sc_callout; int * sc_io_res; int sc_imod_default; int * sc_port_route; int sc_io_size; int sc_io_hdl; int sc_io_tag; } ;
typedef int driver_intr_t ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int PCI_XHCI_CBMEM ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_BUS_LOCK (TYPE_1__*) ;
 int USB_BUS_UNLOCK (TYPE_1__*) ;
 int XHCI_IMOD_DEFAULT_LP ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int *,struct xhci_softc*,int **) ;
 int * device_add_child (int ,char*,int) ;
 struct xhci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int *) ;
 int device_set_ivars (int *,TYPE_1__*) ;
 int hz ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 scalar_t__ pci_alloc_msix (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_devid (int ) ;
 int pci_get_vendor (int ) ;
 int pci_msix_table_bar (int ) ;
 int pci_release_msi (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_rid (int *) ;
 int rman_get_size (int *) ;
 int sprintf (int ,char*,int) ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 int xhci_halt_controller (struct xhci_softc*) ;
 scalar_t__ xhci_init (struct xhci_softc*,int ,int) ;
 scalar_t__ xhci_interrupt ;
 int xhci_interrupt_poll (struct xhci_softc*) ;
 int xhci_pci_detach (int ) ;
 int xhci_pci_port_route ;
 int xhci_pci_take_controller (int ) ;
 int xhci_start_controller (struct xhci_softc*) ;
 scalar_t__ xhci_use_msi ;
 scalar_t__ xhci_use_msix ;
 scalar_t__ xhci_use_polling () ;

__attribute__((used)) static int
xhci_pci_attach(device_t self)
{
 struct xhci_softc *sc = device_get_softc(self);
 int count, err, msix_table, rid;
 uint8_t usemsi = 1;
 uint8_t usedma32 = 0;

 rid = PCI_XHCI_CBMEM;
 sc->sc_io_res = bus_alloc_resource_any(self, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_io_res) {
  device_printf(self, "Could not map memory\n");
  return (ENOMEM);
 }
 sc->sc_io_tag = rman_get_bustag(sc->sc_io_res);
 sc->sc_io_hdl = rman_get_bushandle(sc->sc_io_res);
 sc->sc_io_size = rman_get_size(sc->sc_io_res);

 switch (pci_get_devid(self)) {
 case 0x01941033:
 case 0x00141912:

  usedma32 = 1;
  break;
 case 0x10001b73:

  usemsi = 0;
  break;
 case 0x0f358086:
 case 0x9c318086:
 case 0x1e318086:
 case 0x8c318086:
 case 0x8cb18086:
 case 0x9cb18086:




  sc->sc_port_route = &xhci_pci_port_route;
  sc->sc_imod_default = XHCI_IMOD_DEFAULT_LP;
  sc->sc_ctlstep = 1;
  break;
 }

 if (xhci_init(sc, self, usedma32)) {
  device_printf(self, "Could not initialize softc\n");
  bus_release_resource(self, SYS_RES_MEMORY, PCI_XHCI_CBMEM,
      sc->sc_io_res);
  return (ENXIO);
 }

 pci_enable_busmaster(self);

 usb_callout_init_mtx(&sc->sc_callout, &sc->sc_bus.bus_mtx, 0);

 rid = 0;
 if (xhci_use_msix && (msix_table = pci_msix_table_bar(self)) >= 0) {
  sc->sc_msix_res = bus_alloc_resource_any(self, SYS_RES_MEMORY,
      &msix_table, RF_ACTIVE);
  if (sc->sc_msix_res == ((void*)0)) {

   device_printf(self,
       "Unable to map MSI-X table \n");
  } else {
   count = 1;
   if (pci_alloc_msix(self, &count) == 0) {
    if (bootverbose)
     device_printf(self, "MSI-X enabled\n");
    rid = 1;
   } else {
    bus_release_resource(self, SYS_RES_MEMORY,
        msix_table, sc->sc_msix_res);
    sc->sc_msix_res = ((void*)0);
   }
  }
 }
 if (rid == 0 && xhci_use_msi && usemsi) {
  count = 1;
  if (pci_alloc_msi(self, &count) == 0) {
   if (bootverbose)
    device_printf(self, "MSI enabled\n");
   rid = 1;
  }
 }
 sc->sc_irq_res = bus_alloc_resource_any(self, SYS_RES_IRQ, &rid,
     RF_ACTIVE | (rid != 0 ? 0 : RF_SHAREABLE));
 if (sc->sc_irq_res == ((void*)0)) {
  pci_release_msi(self);
  device_printf(self, "Could not allocate IRQ\n");

 }
 sc->sc_bus.bdev = device_add_child(self, "usbus", -1);
 if (sc->sc_bus.bdev == ((void*)0)) {
  device_printf(self, "Could not add USB device\n");
  goto error;
 }
 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);

 sprintf(sc->sc_vendor, "0x%04x", pci_get_vendor(self));

 if (sc->sc_irq_res != ((void*)0)) {
  err = bus_setup_intr(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
      ((void*)0), (driver_intr_t *)xhci_interrupt, sc, &sc->sc_intr_hdl);
  if (err != 0) {
   bus_release_resource(self, SYS_RES_IRQ,
       rman_get_rid(sc->sc_irq_res), sc->sc_irq_res);
   sc->sc_irq_res = ((void*)0);
   pci_release_msi(self);
   device_printf(self, "Could not setup IRQ, err=%d\n", err);
   sc->sc_intr_hdl = ((void*)0);
  }
 }
 if (sc->sc_irq_res == ((void*)0) || sc->sc_intr_hdl == ((void*)0)) {
  if (xhci_use_polling() != 0) {
   device_printf(self, "Interrupt polling at %dHz\n", hz);
   USB_BUS_LOCK(&sc->sc_bus);
   xhci_interrupt_poll(sc);
   USB_BUS_UNLOCK(&sc->sc_bus);
  } else
   goto error;
 }

 xhci_pci_take_controller(self);

 err = xhci_halt_controller(sc);

 if (err == 0)
  err = xhci_start_controller(sc);

 if (err == 0)
  err = device_probe_and_attach(sc->sc_bus.bdev);

 if (err) {
  device_printf(self, "XHCI halt/start/probe failed err=%d\n", err);
  goto error;
 }
 return (0);

error:
 xhci_pci_detach(self);
 return (ENXIO);
}
