
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int dma_bits; int bdev; int devices_max; int devices; int parent; } ;
struct TYPE_8__ {TYPE_2__ sc_bus; int sc_flags; int * sc_intr_hdl; int * sc_irq_res; int sc_vendor; void* sc_io_res; int sc_io_size; int sc_io_hdl; int sc_io_tag; int sc_devices; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int driver_intr_t ;
typedef int device_t ;


 int EHCI_MAX_DEVICES ;
 int EHCI_SCFLG_IAADBUG ;
 int EHCI_SCFLG_LOSTINTRBUG ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int PCI_CBMEM ;
 int PCI_USBREV ;



 int PCI_USB_REV_MASK ;

 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_GET_DMA_TAG (int ) ;
 int bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,TYPE_1__*,TYPE_1__*,...) ;
 int device_add_child (int ,char*,int) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int ) ;
 int device_set_desc (int ,int ) ;
 int device_set_ivars (int ,TYPE_2__*) ;
 int ehci_init (TYPE_1__*) ;
 scalar_t__ ehci_interrupt ;
 int ehci_iterate_hw_softc ;
 int ehci_pci_ati_quirk (int ,int) ;
 int ehci_pci_detach (int ) ;
 int ehci_pci_match (int ) ;
 int ehci_pci_take_controller (int ) ;
 int ehci_pci_via_quirk (int ) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_device (int ) ;
 int pci_get_devid (int ) ;
 int pci_get_vendor (int ) ;
 int pci_read_config (int ,int ,int) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 int rman_get_size (void*) ;
 int sprintf (int ,char*,...) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
ehci_pci_attach(device_t self)
{
 ehci_softc_t *sc = device_get_softc(self);
 int err;
 int rid;


 sc->sc_bus.parent = self;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
 sc->sc_bus.dma_bits = 32;


 if (usb_bus_mem_alloc_all(&sc->sc_bus,
     USB_GET_DMA_TAG(self), &ehci_iterate_hw_softc)) {
  return (ENOMEM);
 }

 pci_enable_busmaster(self);

 switch (pci_read_config(self, PCI_USBREV, 1) & PCI_USB_REV_MASK) {
 case 128:
 case 131:
 case 130:






  device_printf(self, "pre-2.0 USB revision (ignored)\n");

 case 129:
  break;
 default:

  device_printf(self, "USB revision is unknown. Assuming v2.0.\n");
  break;
 }

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





 device_set_desc(sc->sc_bus.bdev, ehci_pci_match(self));
 switch (pci_get_vendor(self)) {
 case 144:
  sprintf(sc->sc_vendor, "AcerLabs");
  break;
 case 143:
  sprintf(sc->sc_vendor, "AMD");
  break;
 case 142:
  sprintf(sc->sc_vendor, "Apple");
  break;
 case 141:
  sprintf(sc->sc_vendor, "ATI");
  break;
 case 140:
  sprintf(sc->sc_vendor, "CMDTECH");
  break;
 case 139:
  sprintf(sc->sc_vendor, "Intel");
  break;
 case 138:
  sprintf(sc->sc_vendor, "NEC");
  break;
 case 135:
  sprintf(sc->sc_vendor, "OPTi");
  break;
 case 134:
  sprintf(sc->sc_vendor, "Philips");
  break;
 case 133:
  sprintf(sc->sc_vendor, "SiS");
  break;
 case 137:
 case 136:
  sprintf(sc->sc_vendor, "nVidia");
  break;
 case 132:
  sprintf(sc->sc_vendor, "VIA");
  break;
 default:
  if (bootverbose)
   device_printf(self, "(New EHCI DeviceId=0x%08x)\n",
       pci_get_devid(self));
  sprintf(sc->sc_vendor, "(0x%04x)", pci_get_vendor(self));
 }





 err = bus_setup_intr(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);

 if (err) {
  device_printf(self, "Could not setup irq, %d\n", err);
  sc->sc_intr_hdl = ((void*)0);
  goto error;
 }
 ehci_pci_take_controller(self);



 switch (pci_get_vendor(self)) {
 case 141:

  switch (pci_get_device(self)) {
  case 0x4386:
   ehci_pci_ati_quirk(self, 0);
   break;
  case 0x4396:
   ehci_pci_ati_quirk(self, 1);
   break;
  default:
   break;
  }
  break;

 case 132:
  ehci_pci_via_quirk(self);
  break;

 default:
  break;
 }


 switch (pci_get_vendor(self)) {
 case 141:
 case 132:
  sc->sc_flags |= EHCI_SCFLG_LOSTINTRBUG;
  if (bootverbose)
   device_printf(self,
       "Dropped interrupts workaround enabled\n");
  break;
 default:
  break;
 }


 switch (pci_get_vendor(self)) {
 case 137:
 case 136:
  sc->sc_flags |= EHCI_SCFLG_IAADBUG;
  if (bootverbose)
   device_printf(self,
       "Doorbell workaround enabled\n");
  break;
 default:
  break;
 }

 err = ehci_init(sc);
 if (!err) {
  err = device_probe_and_attach(sc->sc_bus.bdev);
 }
 if (err) {
  device_printf(self, "USB init failed err=%d\n", err);
  goto error;
 }
 return (0);

error:
 ehci_pci_detach(self);
 return (ENXIO);
}
