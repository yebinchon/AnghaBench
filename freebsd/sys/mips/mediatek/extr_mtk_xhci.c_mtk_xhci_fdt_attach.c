
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bdev; int devices_max; int devices; int parent; } ;
struct xhci_softc {TYPE_1__ sc_bus; int * sc_intr_hdl; int * sc_irq_res; int sc_vendor; void* sc_io_res; int sc_io_size; int sc_io_hdl; int sc_io_tag; int sc_devices; } ;
typedef int driver_intr_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int XHCI_HC_DEVSTR ;
 int XHCI_MAX_DEVICES ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int *,struct xhci_softc*,int **) ;
 int device_add_child (int ,char*,int) ;
 struct xhci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int ) ;
 int device_set_desc (int ,int ) ;
 int device_set_ivars (int ,TYPE_1__*) ;
 int mtk_xhci_fdt_detach (int ) ;
 int mtk_xhci_fdt_init (int ) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_size (void*) ;
 int sprintf (int ,char*) ;
 int xhci_halt_controller (struct xhci_softc*) ;
 int xhci_init (struct xhci_softc*,int ,int) ;
 scalar_t__ xhci_interrupt ;
 int xhci_start_controller (struct xhci_softc*) ;

__attribute__((used)) static int
mtk_xhci_fdt_attach(device_t self)
{
 struct xhci_softc *sc = device_get_softc(self);
 int err;
 int rid;


 sc->sc_bus.parent = self;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = XHCI_MAX_DEVICES;

 rid = 0;
 sc->sc_io_res = bus_alloc_resource_any(self, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_io_res) {
  device_printf(self, "Could not map memory\n");
  goto error;
 }
 sc->sc_io_tag = rman_get_bustag(sc->sc_io_res);
 sc->sc_io_hdl = rman_get_bushandle(sc->sc_io_res);
 sc->sc_io_size = rman_get_size(sc->sc_io_res);

 mtk_xhci_fdt_init(self);

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(self, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (sc->sc_irq_res == ((void*)0)) {
  device_printf(self, "Could not allocate irq\n");
  goto error;
 }

 sc->sc_bus.bdev = device_add_child(self, "usbus", -1);
 if (!(sc->sc_bus.bdev)) {
  device_printf(self, "Could not add USB device\n");
  goto error;
 }
 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);
 device_set_desc(sc->sc_bus.bdev, XHCI_HC_DEVSTR);

 sprintf(sc->sc_vendor, "Mediatek");

 err = bus_setup_intr(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), (driver_intr_t *)xhci_interrupt, sc, &sc->sc_intr_hdl);
 if (err) {
  device_printf(self, "Could not setup irq, %d\n", err);
  sc->sc_intr_hdl = ((void*)0);
  goto error;
 }

 err = xhci_init(sc, self, 1);
 if (err == 0)
  err = xhci_halt_controller(sc);
 if (err == 0)
  err = xhci_start_controller(sc);
 if (err == 0)
  err = device_probe_and_attach(sc->sc_bus.bdev);
 if (err) {
  device_printf(self, "USB init failed err=%d\n", err);
  goto error;
 }
 return (0);

error:
 mtk_xhci_fdt_detach(self);
 return (ENXIO);
}
