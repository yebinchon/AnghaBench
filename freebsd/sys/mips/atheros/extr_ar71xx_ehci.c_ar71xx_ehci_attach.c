
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int dma_bits; int bdev; int usbrev; int devices_max; int devices; int parent; } ;
struct TYPE_8__ {int sc_flags; TYPE_2__ sc_bus; int sc_offs; int sc_vendor_get_port_speed; int sc_vendor_post_reset; int * sc_intr_hdl; int * sc_irq_res; int sc_vendor; void* sc_io_res; int sc_io_size; int sc_io_hdl; int sc_io_tag; int sc_devices; } ;
struct ar71xx_ehci_softc {TYPE_1__ base; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int device_t ;
 int EHCI_CAPLENGTH (int ) ;
 int EHCI_CAPLEN_HCIVERSION ;
 int EHCI_HC_DEVSTR ;
 int EHCI_MAX_DEVICES ;
 int EHCI_SCFLG_NORESTERM ;
 int EHCI_SCFLG_TT ;
 int ENOMEM ;
 int ENXIO ;
 int EREAD4 (TYPE_1__*,int ) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_GET_DMA_TAG (int ) ;
 int USB_REV_2_0 ;
 int ar71xx_bus_space_reversed ;
 int ar71xx_ehci_detach (int ) ;
 int ar71xx_ehci_intr ;
 int ar71xx_ehci_post_reset ;
 int ar71xx_soc ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,TYPE_1__*,int **) ;
 int device_add_child (int ,char*,int) ;
 struct ar71xx_ehci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int ) ;
 int device_set_desc (int ,int ) ;
 int device_set_ivars (int ,TYPE_2__*) ;
 int ehci_get_port_speed_portsc ;
 int ehci_init (TYPE_1__*) ;
 int ehci_iterate_hw_softc ;
 int ehci_reset (TYPE_1__*) ;
 int rman_get_bushandle (void*) ;
 int rman_get_size (void*) ;
 int sprintf (int ,char*) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
ar71xx_ehci_attach(device_t self)
{
 struct ar71xx_ehci_softc *isc = device_get_softc(self);
 ehci_softc_t *sc = &isc->base;
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

 sc->sc_bus.usbrev = USB_REV_2_0;



 rid = 0;
 sc->sc_io_res = bus_alloc_resource_any(self, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (!sc->sc_io_res) {
  device_printf(self, "Could not map memory\n");
  goto error;
 }





 sc->sc_io_tag = ar71xx_bus_space_reversed;
 sc->sc_io_hdl = rman_get_bushandle(sc->sc_io_res);
 sc->sc_io_size = rman_get_size(sc->sc_io_res);

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(self, SYS_RES_IRQ, &rid,
     RF_ACTIVE | RF_SHAREABLE);
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
 device_set_desc(sc->sc_bus.bdev, EHCI_HC_DEVSTR);

 sprintf(sc->sc_vendor, "Atheros");

 err = bus_setup_intr(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), ar71xx_ehci_intr, sc, &sc->sc_intr_hdl);
 if (err) {
  device_printf(self, "Could not setup irq, %d\n", err);
  sc->sc_intr_hdl = ((void*)0);
  goto error;
 }
 sc->sc_flags = 0;
 sc->sc_vendor_post_reset = ar71xx_ehci_post_reset;

 switch (ar71xx_soc) {
  case 140:
  case 139:
  case 138:
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
  case 128:
   sc->sc_flags |= EHCI_SCFLG_TT | EHCI_SCFLG_NORESTERM;
   sc->sc_vendor_get_port_speed =
       ehci_get_port_speed_portsc;
   break;
  default:

   break;
 }





 sc->sc_offs = EHCI_CAPLENGTH(EREAD4(sc, EHCI_CAPLEN_HCIVERSION));

 (void) ehci_reset(sc);

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
 ar71xx_ehci_detach(self);
 return (ENXIO);
}
