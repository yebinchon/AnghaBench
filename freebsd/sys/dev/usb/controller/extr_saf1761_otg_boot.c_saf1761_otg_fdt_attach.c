
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dma_bits; int * bdev; int devices_max; int devices; int parent; } ;
struct saf1761_otg_softc {TYPE_1__ sc_bus; int sc_io_size; void* sc_io_hdl; void* sc_io_tag; void* sc_io_res; int sc_devices; int sc_hw_mode; } ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 int SOTG_HW_MODE_CTRL_DATA_BUS_WIDTH ;
 int SOTG_MAX_DEVICES ;
 int USB_GET_DMA_TAG (int ) ;
 scalar_t__ USB_PCI_MEMORY_ADDRESS ;
 int USB_PCI_MEMORY_SIZE ;
 int * device_add_child (int ,char*,int) ;
 struct saf1761_otg_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_probe_and_attach (int *) ;
 int device_set_interrupt (int ,int *,int *,struct saf1761_otg_softc*) ;
 int device_set_ivars (int *,TYPE_1__*) ;
 int saf1761_otg_fdt_detach (int ) ;
 int saf1761_otg_filter_interrupt ;
 int saf1761_otg_init (struct saf1761_otg_softc*) ;
 int saf1761_otg_interrupt ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
saf1761_otg_fdt_attach(device_t dev)
{
 struct saf1761_otg_softc *sc = device_get_softc(dev);
 int err;


 sc->sc_hw_mode |= SOTG_HW_MODE_CTRL_DATA_BUS_WIDTH;


 sc->sc_bus.parent = dev;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = SOTG_MAX_DEVICES;
 sc->sc_bus.dma_bits = 32;


 if (usb_bus_mem_alloc_all(&sc->sc_bus, USB_GET_DMA_TAG(dev), ((void*)0)))
  return (ENOMEM);

 sc->sc_io_res = (void *)1;
 sc->sc_io_tag = (void *)1;
 sc->sc_io_hdl = (void *)USB_PCI_MEMORY_ADDRESS;
 sc->sc_io_size = USB_PCI_MEMORY_SIZE;

 sc->sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (sc->sc_bus.bdev == ((void*)0))
  goto error;

 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);
 device_set_interrupt(dev, &saf1761_otg_filter_interrupt, &saf1761_otg_interrupt, sc);

 err = saf1761_otg_init(sc);
 if (err) {
  device_printf(dev, "Init failed\n");
  goto error;
 }
 err = device_probe_and_attach(sc->sc_bus.bdev);
 if (err) {
  device_printf(dev, "USB probe and attach failed\n");
  goto error;
 }
 return (0);

error:
 saf1761_otg_fdt_detach(dev);
 return (ENXIO);
}
