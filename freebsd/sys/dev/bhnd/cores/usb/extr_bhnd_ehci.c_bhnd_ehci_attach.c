
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dma_bits; int bdev; int usbrev; int devices_max; int devices; int parent; } ;
struct TYPE_7__ {TYPE_2__ sc_bus; int sc_vendor_post_reset; int sc_flags; int * sc_intr_hdl; int * sc_irq_res; int sc_vendor; void* sc_io_res; int sc_io_size; int sc_io_hdl; int sc_io_tag; int sc_devices; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int driver_intr_t ;
typedef int device_t ;


 int BHND_ERROR_DEV (int ,char*,...) ;
 int EHCI_HC_DEVSTR ;
 int EHCI_MAX_DEVICES ;
 int EHCI_SCFLG_LOSTINTRBUG ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_GET_DMA_TAG (int ) ;
 int USB_REV_2_0 ;
 int bhnd_ehci_detach (int ) ;
 int bhnd_ehci_post_reset ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int *,TYPE_1__*,int **) ;
 int device_add_child (int ,char*,int) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_probe_and_attach (int ) ;
 int device_set_desc (int ,int ) ;
 int device_set_ivars (int ,TYPE_2__*) ;
 int ehci_init (TYPE_1__*) ;
 scalar_t__ ehci_interrupt ;
 int ehci_iterate_hw_softc ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_size (void*) ;
 int sprintf (int ,char*) ;
 int usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
bhnd_ehci_attach(device_t self)
{
 ehci_softc_t *sc;
 int err;
 int rid;

 sc = device_get_softc(self);

 sc->sc_bus.parent = self;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
 sc->sc_bus.usbrev = USB_REV_2_0;
 sc->sc_bus.dma_bits = 32;


 if ((err = usb_bus_mem_alloc_all(&sc->sc_bus, USB_GET_DMA_TAG(self),
     &ehci_iterate_hw_softc)) != 0) {
  BHND_ERROR_DEV(self, "can't allocate DMA memory: %d", err);
  return (ENOMEM);
 }

 rid = 0;
 sc->sc_io_res = bus_alloc_resource_any(self, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_io_res) {
  BHND_ERROR_DEV(self, "Could not map memory");
  goto error;
 }
 sc->sc_io_tag = rman_get_bustag(sc->sc_io_res);
 sc->sc_io_hdl = rman_get_bushandle(sc->sc_io_res);
 sc->sc_io_size = rman_get_size(sc->sc_io_res);

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(self, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);

 if (sc->sc_irq_res == ((void*)0)) {
  BHND_ERROR_DEV(self, "Could not allocate error irq");
  bhnd_ehci_detach(self);
  return (ENXIO);
 }

 sc->sc_bus.bdev = device_add_child(self, "usbus", -1);
 if (!sc->sc_bus.bdev) {
  BHND_ERROR_DEV(self, "Could not add USB device");
  goto error;
 }
 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);
 device_set_desc(sc->sc_bus.bdev, EHCI_HC_DEVSTR);

  sprintf(sc->sc_vendor, "Broadcom");

 err = bus_setup_intr(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);
 if (err) {
  BHND_ERROR_DEV(self, "Could not setup irq, %d", err);
  sc->sc_intr_hdl = ((void*)0);
  goto error;
 }

 sc->sc_flags |= EHCI_SCFLG_LOSTINTRBUG;
 sc->sc_vendor_post_reset = bhnd_ehci_post_reset;

 err = ehci_init(sc);
 if (!err) {
  err = device_probe_and_attach(sc->sc_bus.bdev);
 }
 if (err) {
  BHND_ERROR_DEV(self, "USB init failed err=%d", err);
  goto error;
 }
 return (0);

error:
 bhnd_ehci_detach(self);
 return (ENXIO);
}
