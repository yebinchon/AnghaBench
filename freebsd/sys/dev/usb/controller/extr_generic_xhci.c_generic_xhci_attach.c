
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bdev; int devices_max; int devices; int parent; } ;
struct xhci_softc {TYPE_1__ sc_bus; int * sc_intr_hdl; int * sc_irq_res; int sc_vendor; int * sc_io_res; int sc_io_size; int sc_io_hdl; int sc_io_tag; int sc_devices; } ;
typedef int driver_intr_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int IS_DMA_32B ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int XHCI_HC_DEVSTR ;
 char* XHCI_HC_VENDOR ;
 int XHCI_MAX_DEVICES ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int *,struct xhci_softc*,int **) ;
 int * device_add_child (int ,char*,int) ;
 struct xhci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int *) ;
 int device_set_desc (int *,int ) ;
 int device_set_ivars (int *,TYPE_1__*) ;
 int generic_xhci_detach (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_size (int *) ;
 int sprintf (int ,char*) ;
 int xhci_init (struct xhci_softc*,int ,int ) ;
 scalar_t__ xhci_interrupt ;
 int xhci_start_controller (struct xhci_softc*) ;

int
generic_xhci_attach(device_t dev)
{
 struct xhci_softc *sc = device_get_softc(dev);
 int err = 0, rid = 0;

 sc->sc_bus.parent = dev;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = XHCI_MAX_DEVICES;

 sc->sc_io_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_io_res == ((void*)0)) {
  device_printf(dev, "Failed to map memory\n");
  generic_xhci_detach(dev);
  return (ENXIO);
 }

 sc->sc_io_tag = rman_get_bustag(sc->sc_io_res);
 sc->sc_io_hdl = rman_get_bushandle(sc->sc_io_res);
 sc->sc_io_size = rman_get_size(sc->sc_io_res);

 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (sc->sc_irq_res == ((void*)0)) {
  device_printf(dev, "Failed to allocate IRQ\n");
  generic_xhci_detach(dev);
  return (ENXIO);
 }

 sc->sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (sc->sc_bus.bdev == ((void*)0)) {
  device_printf(dev, "Failed to add USB device\n");
  generic_xhci_detach(dev);
  return (ENXIO);
 }

 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);

 sprintf(sc->sc_vendor, XHCI_HC_VENDOR);
 device_set_desc(sc->sc_bus.bdev, XHCI_HC_DEVSTR);

 err = bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), (driver_intr_t *)xhci_interrupt, sc, &sc->sc_intr_hdl);
 if (err != 0) {
  device_printf(dev, "Failed to setup error IRQ, %d\n", err);
  sc->sc_intr_hdl = ((void*)0);
  generic_xhci_detach(dev);
  return (err);
 }

 err = xhci_init(sc, dev, IS_DMA_32B);
 if (err != 0) {
  device_printf(dev, "Failed to init XHCI, with error %d\n", err);
  generic_xhci_detach(dev);
  return (ENXIO);
 }

 err = xhci_start_controller(sc);
 if (err != 0) {
  device_printf(dev, "Failed to start XHCI controller, with error %d\n", err);
  generic_xhci_detach(dev);
  return (ENXIO);
 }

 err = device_probe_and_attach(sc->sc_bus.bdev);
 if (err != 0) {
  device_printf(dev, "Failed to initialize USB, with error %d\n", err);
  generic_xhci_detach(dev);
  return (ENXIO);
 }

 return (0);
}
