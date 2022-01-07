
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int dma_bits; int bdev; int usbrev; int devices_max; int devices; int parent; } ;
struct TYPE_8__ {TYPE_2__ sc_bus; int * sc_intr_hdl; int * sc_irq_res; int sc_vendor; void* sc_io_res; int sc_io_size; int sc_io_hdl; int sc_io_tag; int sc_devices; } ;
struct jz4780_ehci_softc {TYPE_1__ base; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int device_t ;


 int EHCI_HC_DEVSTR ;
 int EHCI_MAX_DEVICES ;
 int EHCI_USBINTR ;
 int ENOMEM ;
 int ENXIO ;
 int EREAD4 (TYPE_1__*,int ) ;
 int EWRITE4 (TYPE_1__*,int ,int ) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int JZ_EHCI_REG_UTMI_BUS ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_GET_DMA_TAG (int ) ;
 int USB_REV_2_0 ;
 int UTMI_BUS_WIDTH ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,TYPE_1__*,int **) ;
 int device_add_child (int ,char*,int) ;
 struct jz4780_ehci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int ) ;
 int device_set_desc (int ,int ) ;
 int device_set_ivars (int ,TYPE_2__*) ;
 int ehci_init (TYPE_1__*) ;
 int ehci_iterate_hw_softc ;
 int jz4780_ehci_clk_enable (int ) ;
 int jz4780_ehci_detach (int ) ;
 scalar_t__ jz4780_ehci_enable () ;
 int jz4780_ehci_intr ;
 int jz4780_ehci_vbus_gpio_enable (int ) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_size (void*) ;
 int sprintf (int ,char*) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
jz4780_ehci_attach(device_t dev)
{
 struct jz4780_ehci_softc *isc;
 ehci_softc_t *sc;
 int err;
 int rid;
 uint32_t reg;

 isc = device_get_softc(dev);
 sc = &isc->base;


 sc->sc_bus.parent = dev;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
 sc->sc_bus.dma_bits = 32;


 if (usb_bus_mem_alloc_all(&sc->sc_bus,
     USB_GET_DMA_TAG(dev), &ehci_iterate_hw_softc)) {
  return (ENOMEM);
 }

 sc->sc_bus.usbrev = USB_REV_2_0;

 err = jz4780_ehci_vbus_gpio_enable(dev);
 if (err)
  goto error;

 rid = 0;
 sc->sc_io_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (!sc->sc_io_res) {
  device_printf(dev, "Could not map memory\n");
  goto error;
 }





 sc->sc_io_tag = rman_get_bustag(sc->sc_io_res);
 sc->sc_io_hdl = rman_get_bushandle(sc->sc_io_res);
 sc->sc_io_size = rman_get_size(sc->sc_io_res);

 err = jz4780_ehci_clk_enable(dev);
 if (err)
  goto error;

 if (jz4780_ehci_enable() != 0) {
  device_printf(dev, "CGU failed to enable EHCI\n");
  err = ENXIO;
  goto error;
 }

 EWRITE4(sc, EHCI_USBINTR, 0);

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->sc_irq_res == ((void*)0)) {
  device_printf(dev, "Could not allocate irq\n");
  goto error;
 }
 sc->sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (!sc->sc_bus.bdev) {
  device_printf(dev, "Could not add USB device\n");
  goto error;
 }
 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);
 device_set_desc(sc->sc_bus.bdev, EHCI_HC_DEVSTR);

 sprintf(sc->sc_vendor, "Ingenic");

 err = bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), jz4780_ehci_intr, sc, &sc->sc_intr_hdl);
 if (err) {
  device_printf(dev, "Could not setup irq, %d\n", err);
  sc->sc_intr_hdl = ((void*)0);
  goto error;
 }

 err = ehci_init(sc);
 if (!err) {

  reg = EREAD4(sc, JZ_EHCI_REG_UTMI_BUS);
  reg |= UTMI_BUS_WIDTH;
  EWRITE4(sc, JZ_EHCI_REG_UTMI_BUS, reg);

  err = device_probe_and_attach(sc->sc_bus.bdev);
 }
 if (err) {
  device_printf(dev, "USB init failed err=%d\n", err);
  goto error;
 }
 return (0);

error:
 jz4780_ehci_detach(dev);
 return (ENXIO);
}
