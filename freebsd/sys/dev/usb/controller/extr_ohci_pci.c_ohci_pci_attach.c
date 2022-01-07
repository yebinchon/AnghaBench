
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int dma_bits; int bdev; int devices_max; int devices; void* parent; } ;
struct TYPE_8__ {TYPE_2__ sc_bus; int * sc_intr_hdl; int * sc_irq_res; int sc_vendor; void* sc_io_res; int sc_io_size; int sc_io_hdl; int sc_io_tag; void* sc_dev; int sc_devices; } ;
typedef TYPE_1__ ohci_softc_t ;
typedef int driver_intr_t ;
typedef void* device_t ;


 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int OHCI_MAX_DEVICES ;
 int PCI_CBMEM ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_GET_DMA_TAG (void*) ;
 int bootverbose ;
 void* bus_alloc_resource_any (void*,int ,int*,int) ;
 int bus_setup_intr (void*,int *,int,int *,TYPE_1__*,TYPE_1__*,...) ;
 int device_add_child (void*,char*,int) ;
 TYPE_1__* device_get_softc (void*) ;
 int device_printf (void*,char*,...) ;
 int device_probe_and_attach (int ) ;
 int device_set_desc (int ,int ) ;
 int device_set_ivars (int ,TYPE_2__*) ;
 int ohci_init (TYPE_1__*) ;
 scalar_t__ ohci_interrupt ;
 int ohci_iterate_hw_softc ;
 int ohci_pci_detach (void*) ;
 int ohci_pci_match (void*) ;
 int pci_enable_busmaster (void*) ;
 int pci_get_devid (void*) ;
 scalar_t__ pci_get_intpin (void*) ;
 int pci_get_vendor (void*) ;
 int pci_set_intpin (void*,int) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_size (void*) ;
 int sprintf (int ,char*,...) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
ohci_pci_attach(device_t self)
{
 ohci_softc_t *sc = device_get_softc(self);
 int rid;
 int err;


 sc->sc_bus.parent = self;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = OHCI_MAX_DEVICES;
 sc->sc_bus.dma_bits = 32;


 if (usb_bus_mem_alloc_all(&sc->sc_bus, USB_GET_DMA_TAG(self),
     &ohci_iterate_hw_softc)) {
  return (ENOMEM);
 }
 sc->sc_dev = self;

 pci_enable_busmaster(self);





 if (pci_get_devid(self) == 0x1103108e && pci_get_intpin(self) == 0)
  pci_set_intpin(self, 4);

 rid = PCI_CBMEM;
 sc->sc_io_res = bus_alloc_resource_any(self, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_io_res) {
  device_printf(self, "Could not map memory\n");
  goto error;
 }
 sc->sc_io_tag = rman_get_bustag(sc->sc_io_res);
 sc->sc_io_hdl = rman_get_bushandle(sc->sc_io_res);
 sc->sc_io_size = rman_get_size(sc->sc_io_res);

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(self, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (sc->sc_irq_res == ((void*)0)) {
  device_printf(self, "Could not allocate irq\n");
  goto error;
 }
 sc->sc_bus.bdev = device_add_child(self, "usbus", -1);
 if (!sc->sc_bus.bdev) {
  device_printf(self, "Could not add USB device\n");
  goto error;
 }
 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);





 device_set_desc(sc->sc_bus.bdev, ohci_pci_match(self));
 switch (pci_get_vendor(self)) {
 case 138:
  sprintf(sc->sc_vendor, "AcerLabs");
  break;
 case 137:
  sprintf(sc->sc_vendor, "AMD");
  break;
 case 136:
  sprintf(sc->sc_vendor, "Apple");
  break;
 case 135:
  sprintf(sc->sc_vendor, "ATI");
  break;
 case 134:
  sprintf(sc->sc_vendor, "CMDTECH");
  break;
 case 133:
  sprintf(sc->sc_vendor, "NEC");
  break;
 case 132:
 case 131:
  sprintf(sc->sc_vendor, "nVidia");
  break;
 case 130:
  sprintf(sc->sc_vendor, "OPTi");
  break;
 case 129:
  sprintf(sc->sc_vendor, "SiS");
  break;
 case 128:
  sprintf(sc->sc_vendor, "SUN");
  break;
 default:
  if (bootverbose) {
   device_printf(self, "(New OHCI DeviceId=0x%08x)\n",
       pci_get_devid(self));
  }
  sprintf(sc->sc_vendor, "(0x%04x)", pci_get_vendor(self));
 }







 err = bus_setup_intr(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     (driver_intr_t *)ohci_interrupt, sc, &sc->sc_intr_hdl);

 if (err) {
  device_printf(self, "Could not setup irq, %d\n", err);
  sc->sc_intr_hdl = ((void*)0);
  goto error;
 }
 err = ohci_init(sc);
 if (!err) {
  err = device_probe_and_attach(sc->sc_bus.bdev);
 }
 if (err) {
  device_printf(self, "USB init failed\n");
  goto error;
 }
 return (0);

error:
 ohci_pci_detach(self);
 return (ENXIO);
}
