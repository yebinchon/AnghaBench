
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dma_bits; int bdev; int devices_max; int devices; int parent; } ;
struct dwc_otg_softc {TYPE_1__ sc_bus; int * sc_intr_hdl; void* sc_irq_res; void* sc_io_res; int sc_io_size; int sc_io_hdl; int sc_io_tag; int sc_devices; int sc_mode; } ;
typedef int device_t ;


 int DWC_MODE_HOST ;
 int DWC_OTG_MAX_DEVICES ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_TTY ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_GET_DMA_TAG (int ) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_setup_intr (int ,void*,int,int ,int ,struct dwc_otg_softc*,int **) ;
 int device_add_child (int ,char*,int) ;
 struct dwc_otg_softc* device_get_softc (int ) ;
 int device_probe_and_attach (int ) ;
 int device_set_ivars (int ,TYPE_1__*) ;
 int dotg_fdt_detach (int ) ;
 int dwc_otg_filter_interrupt ;
 int dwc_otg_init (struct dwc_otg_softc*) ;
 int dwc_otg_interrupt ;
 int printf (char*,...) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_size (void*) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
dotg_fdt_attach(device_t dev)
{
 struct dwc_otg_softc *sc = device_get_softc(dev);
 int err, rid;




 sc->sc_mode = DWC_MODE_HOST;
 sc->sc_bus.parent = dev;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = DWC_OTG_MAX_DEVICES;
 sc->sc_bus.dma_bits = 32;


 if (usb_bus_mem_alloc_all(&sc->sc_bus,
     USB_GET_DMA_TAG(dev), ((void*)0))) {
  printf("No mem\n");
  return (ENOMEM);
 }
 rid = 0;
 sc->sc_io_res =
     bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (!(sc->sc_io_res)) {
  printf("Can`t alloc MEM\n");
  goto error;
 }
 sc->sc_io_tag = rman_get_bustag(sc->sc_io_res);
 sc->sc_io_hdl = rman_get_bushandle(sc->sc_io_res);
 sc->sc_io_size = rman_get_size(sc->sc_io_res);

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &rid, RF_ACTIVE);
 if (!(sc->sc_irq_res)) {
  printf("Can`t alloc IRQ\n");
  goto error;
 }

 sc->sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (!(sc->sc_bus.bdev)) {
  printf("Can`t add usbus\n");
  goto error;
 }
 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);

 err = bus_setup_intr(dev, sc->sc_irq_res,
     INTR_TYPE_TTY | INTR_MPSAFE, dwc_otg_filter_interrupt,
     dwc_otg_interrupt, sc, &sc->sc_intr_hdl);
 if (err) {
  sc->sc_intr_hdl = ((void*)0);
  printf("Can`t set IRQ handle\n");
  goto error;
 }

 err = dwc_otg_init(sc);
 if (err) printf("dotg_init fail\n");
 if (!err) {
  err = device_probe_and_attach(sc->sc_bus.bdev);
  if (err) printf("device_probe_and_attach fail %d\n", err);
 }
 if (err) {
  goto error;
 }
 return (0);

error:
 dotg_fdt_detach(dev);
 return (ENXIO);
}
