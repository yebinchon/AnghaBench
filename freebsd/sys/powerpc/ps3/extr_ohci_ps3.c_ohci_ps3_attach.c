
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dma_bits; int bdev; int devices_max; int devices; int parent; } ;
struct TYPE_7__ {TYPE_2__ sc_bus; int sc_io_hdl; int sc_io_tag; int sc_intr_hdl; int * sc_irq_res; int sc_vendor; void* sc_io_res; int sc_io_size; int sc_devices; } ;
typedef TYPE_1__ ohci_softc_t ;
typedef int driver_intr_t ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int OHCI_CONTROL ;
 int OHCI_MAX_DEVICES ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_GET_DMA_TAG (int ) ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int *,TYPE_1__*,int *) ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 int device_add_child (int ,char*,int) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int ) ;
 int device_set_ivars (int ,TYPE_2__*) ;
 int ohci_init (TYPE_1__*) ;
 scalar_t__ ohci_interrupt ;
 int ohci_iterate_hw_softc ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_size (void*) ;
 int sprintf (int ,char*) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
ohci_ps3_attach(device_t dev)
{
 ohci_softc_t *sc = device_get_softc(dev);
 int rid, err;

 sc->sc_bus.parent = dev;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = OHCI_MAX_DEVICES;
 sc->sc_bus.dma_bits = 32;


 if (usb_bus_mem_alloc_all(&sc->sc_bus,
     USB_GET_DMA_TAG(dev), &ohci_iterate_hw_softc))
  return (ENOMEM);

 rid = 0;
 sc->sc_io_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &rid, RF_ACTIVE);

 if (!sc->sc_io_res) {
  device_printf(dev, "Could not map memory\n");
  goto error;
 }

 sc->sc_io_tag = rman_get_bustag(sc->sc_io_res);
 sc->sc_io_hdl = rman_get_bushandle(sc->sc_io_res);
 sc->sc_io_size = rman_get_size(sc->sc_io_res);

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);

 if (sc->sc_irq_res == ((void*)0)) {
  device_printf(dev, "Could not allocate irq\n");
  return (ENXIO);
 }

 sc->sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (!sc->sc_bus.bdev) {
  device_printf(dev, "Could not add USB device\n");
  return (ENXIO);
 }

 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);

 sprintf(sc->sc_vendor, "Sony");

 err = bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), (driver_intr_t *)ohci_interrupt, sc, &sc->sc_intr_hdl);
 if (err) {
  device_printf(dev, "Could not setup error irq, %d\n", err);
  goto error;
 }


 bus_space_write_4(sc->sc_io_tag, sc->sc_io_hdl,
     OHCI_CONTROL, 0);
 err = ohci_init(sc);
 if (err) {
  device_printf(dev, "USB init failed err=%d\n", err);
  goto error;
 }

 err = device_probe_and_attach(sc->sc_bus.bdev);
 if (err == 0)
  return (0);

error:
 return (ENXIO);
}
