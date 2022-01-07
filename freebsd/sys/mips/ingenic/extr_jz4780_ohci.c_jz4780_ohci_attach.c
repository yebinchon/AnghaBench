
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dma_bits; int * bdev; int devices_max; int devices; void* parent; } ;
struct TYPE_5__ {TYPE_1__ sc_bus; int sc_io_hdl; int sc_io_tag; int sc_vendor; int sc_intr_hdl; int * sc_irq_res; int * sc_io_res; int sc_io_size; void* sc_dev; int sc_devices; } ;
struct jz4780_ohci_softc {TYPE_2__ sc_ohci; } ;
typedef int driver_intr_t ;
typedef void* device_t ;


 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int OHCI_CONTROL ;
 int OHCI_MAX_DEVICES ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_GET_DMA_TAG (void*) ;
 void* bus_alloc_resource_any (void*,int ,int*,int ) ;
 int bus_setup_intr (void*,int *,int,int *,int *,struct jz4780_ohci_softc*,int *) ;
 int bus_space_write_4 (int ,int ,int ,int ) ;
 int * device_add_child (void*,char*,int) ;
 struct jz4780_ohci_softc* device_get_softc (void*) ;
 int device_printf (void*,char*) ;
 int device_probe_and_attach (int *) ;
 int device_set_ivars (int *,TYPE_1__*) ;
 int jz4780_ohci_clk_enable (void*) ;
 int jz4780_ohci_detach (void*) ;
 scalar_t__ jz4780_ohci_enable () ;
 int jz4780_ohci_vbus_gpio_enable (void*,struct jz4780_ohci_softc*) ;
 int ohci_init (TYPE_2__*) ;
 scalar_t__ ohci_interrupt ;
 int ohci_iterate_hw_softc ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_size (int *) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
jz4780_ohci_attach(device_t dev)
{
 struct jz4780_ohci_softc *sc = device_get_softc(dev);
 int err;
 int rid;


 sc->sc_ohci.sc_bus.parent = dev;
 sc->sc_ohci.sc_bus.devices = sc->sc_ohci.sc_devices;
 sc->sc_ohci.sc_bus.devices_max = OHCI_MAX_DEVICES;
 sc->sc_ohci.sc_bus.dma_bits = 32;


 if (usb_bus_mem_alloc_all(&sc->sc_ohci.sc_bus,
     USB_GET_DMA_TAG(dev), &ohci_iterate_hw_softc)) {
  return (ENOMEM);
 }

 sc->sc_ohci.sc_dev = dev;


 err = jz4780_ohci_vbus_gpio_enable(dev, sc);
 if (err)
  goto error;

 err = jz4780_ohci_clk_enable(dev);
 if (err)
  goto error;

 rid = 0;
 sc->sc_ohci.sc_io_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_ohci.sc_io_res == ((void*)0)) {
  err = ENOMEM;
  goto error;
 }
 sc->sc_ohci.sc_io_tag = rman_get_bustag(sc->sc_ohci.sc_io_res);
 sc->sc_ohci.sc_io_hdl = rman_get_bushandle(sc->sc_ohci.sc_io_res);
 sc->sc_ohci.sc_io_size = rman_get_size(sc->sc_ohci.sc_io_res);

 rid = 0;
 sc->sc_ohci.sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->sc_ohci.sc_irq_res == ((void*)0)) {
  err = ENOMEM;
  goto error;
 }

 if (jz4780_ohci_enable() != 0) {
  device_printf(dev, "CGU failed to enable OHCI\n");
  err = ENXIO;
  goto error;
 }

 sc->sc_ohci.sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (sc->sc_ohci.sc_bus.bdev == ((void*)0)) {
  err = ENOMEM;
  goto error;
 }
 device_set_ivars(sc->sc_ohci.sc_bus.bdev, &sc->sc_ohci.sc_bus);

 err = bus_setup_intr(dev, sc->sc_ohci.sc_irq_res,
     INTR_TYPE_BIO | INTR_MPSAFE, ((void*)0),
     (driver_intr_t *)ohci_interrupt, sc, &sc->sc_ohci.sc_intr_hdl);
 if (err) {
  err = ENXIO;
  goto error;
 }

 strlcpy(sc->sc_ohci.sc_vendor, "Ingenic", sizeof(sc->sc_ohci.sc_vendor));
 bus_space_write_4(sc->sc_ohci.sc_io_tag, sc->sc_ohci.sc_io_hdl, OHCI_CONTROL, 0);

 err = ohci_init(&sc->sc_ohci);
 if (!err)
  err = device_probe_and_attach(sc->sc_ohci.sc_bus.bdev);

 if (err)
  goto error;
 return (0);

error:
 if (err)
  jz4780_ohci_detach(dev);
 return (err);
}
