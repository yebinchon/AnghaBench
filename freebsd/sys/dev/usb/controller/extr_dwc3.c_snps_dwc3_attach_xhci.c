
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bdev; } ;
struct xhci_softc {TYPE_1__ sc_bus; int * sc_intr_hdl; int * sc_irq_res; int sc_vendor; int sc_io_size; int sc_io_hdl; int sc_io_tag; int sc_io_res; } ;
struct snps_dwc3_softc {int mem_res; int bsh; int bst; struct xhci_softc sc; } ;
typedef int driver_intr_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int *,struct xhci_softc*,int **) ;
 int * device_add_child (int ,char*,int) ;
 struct snps_dwc3_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int *) ;
 int device_set_desc (int *,char*) ;
 int device_set_ivars (int *,TYPE_1__*) ;
 int rman_get_size (int ) ;
 int sprintf (int ,char*) ;
 int xhci_init (struct xhci_softc*,int ,int) ;
 scalar_t__ xhci_interrupt ;
 int xhci_start_controller (struct xhci_softc*) ;

__attribute__((used)) static int
snps_dwc3_attach_xhci(device_t dev)
{
 struct snps_dwc3_softc *snps_sc = device_get_softc(dev);
 struct xhci_softc *sc = &snps_sc->sc;
 int err = 0, rid = 0;

 sc->sc_io_res = snps_sc->mem_res;
 sc->sc_io_tag = snps_sc->bst;
 sc->sc_io_hdl = snps_sc->bsh;
 sc->sc_io_size = rman_get_size(snps_sc->mem_res);

 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (sc->sc_irq_res == ((void*)0)) {
  device_printf(dev, "Failed to allocate IRQ\n");
  return (ENXIO);
 }

 sc->sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (sc->sc_bus.bdev == ((void*)0)) {
  device_printf(dev, "Failed to add USB device\n");
  return (ENXIO);
 }

 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);

 sprintf(sc->sc_vendor, "Synopsys");
 device_set_desc(sc->sc_bus.bdev, "Synopsys");

 err = bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), (driver_intr_t *)xhci_interrupt, sc, &sc->sc_intr_hdl);
 if (err != 0) {
  device_printf(dev, "Failed to setup IRQ, %d\n", err);
  sc->sc_intr_hdl = ((void*)0);
  return (err);
 }

 err = xhci_init(sc, dev, 1);
 if (err != 0) {
  device_printf(dev, "Failed to init XHCI, with error %d\n", err);
  return (ENXIO);
 }

 err = xhci_start_controller(sc);
 if (err != 0) {
  device_printf(dev, "Failed to start XHCI controller, with error %d\n", err);
  return (ENXIO);
 }

 device_printf(sc->sc_bus.bdev, "trying to attach\n");
 err = device_probe_and_attach(sc->sc_bus.bdev);
 if (err != 0) {
  device_printf(dev, "Failed to initialize USB, with error %d\n", err);
  return (ENXIO);
 }

 return (0);
}
