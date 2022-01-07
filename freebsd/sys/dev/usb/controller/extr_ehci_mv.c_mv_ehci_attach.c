
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum mv_ehci_hwtype { ____Placeholder_mv_ehci_hwtype } mv_ehci_hwtype ;
struct TYPE_10__ {int dma_bits; int bdev; int devices_max; int devices; int parent; } ;
struct TYPE_9__ {int sc_flags; TYPE_2__ sc_bus; int sc_vendor_get_port_speed; int sc_vendor_post_reset; int * sc_intr_hdl; int * sc_irq_res; int sc_vendor; int sc_io_hdl; scalar_t__ sc_io_size; int sc_io_tag; void* sc_io_res; int sc_devices; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int driver_intr_t ;
typedef int device_t ;
typedef int bus_space_handle_t ;
struct TYPE_11__ {int ocd_data; } ;


 int EHCI_HC_DEVSTR ;
 int EHCI_MAX_DEVICES ;
 int EHCI_SCFLG_NORESTERM ;
 int EHCI_SCFLG_TT ;
 int ENOMEM ;
 int ENXIO ;
 int EWRITE4 (TYPE_1__*,int ,int) ;
 int HWTYPE_MV_EHCI_V1 ;
 int HWTYPE_NONE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int MV_USB_ADDR_DECODE_ERR ;
 int MV_USB_DEVICE_UNDERFLOW ;
 scalar_t__ MV_USB_HOST_OFST ;
 int MV_USB_HOST_OVERFLOW ;
 int MV_USB_HOST_UNDERFLOW ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_BRIDGE_INTR_MASK ;
 int USB_GET_DMA_TAG (int ) ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int *,TYPE_1__*,int **) ;
 scalar_t__ bus_space_subregion (int ,int ,scalar_t__,scalar_t__,int *) ;
 int compat_data ;
 int device_add_child (int ,char*,int) ;
 int device_get_name (int ) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int ) ;
 int device_set_desc (int ,int ) ;
 int device_set_ivars (int ,TYPE_2__*) ;
 int ehci_get_port_speed_portsc ;
 int ehci_init (TYPE_1__*) ;
 scalar_t__ ehci_interrupt ;
 int ehci_iterate_hw_softc ;
 int * err_intr ;
 int * ih_err ;
 int * irq_err ;
 int mv_ehci_detach (int ) ;
 int mv_ehci_post_reset ;
 TYPE_3__* ofw_bus_search_compatible (int ,int ) ;
 int panic (char*,int ) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;
 scalar_t__ rman_get_size (void*) ;
 int sprintf (int ,char*) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
mv_ehci_attach(device_t self)
{
 ehci_softc_t *sc = device_get_softc(self);
 enum mv_ehci_hwtype hwtype;
 bus_space_handle_t bsh;
 int err;
 int rid;


 sc->sc_bus.parent = self;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
 sc->sc_bus.dma_bits = 32;

 hwtype = ofw_bus_search_compatible(self, compat_data)->ocd_data;
 if (hwtype == HWTYPE_NONE) {
  device_printf(self, "Wrong HW type flag detected\n");
  return (ENXIO);
 }


 if (usb_bus_mem_alloc_all(&sc->sc_bus,
     USB_GET_DMA_TAG(self), &ehci_iterate_hw_softc)) {
  return (ENOMEM);
 }

 rid = 0;
 sc->sc_io_res = bus_alloc_resource_any(self, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (!sc->sc_io_res) {
  device_printf(self, "Could not map memory\n");
  goto error;
 }
 sc->sc_io_tag = rman_get_bustag(sc->sc_io_res);
 bsh = rman_get_bushandle(sc->sc_io_res);
 sc->sc_io_size = rman_get_size(sc->sc_io_res) - MV_USB_HOST_OFST;







 if (bus_space_subregion(sc->sc_io_tag, bsh, MV_USB_HOST_OFST,
     sc->sc_io_size, &sc->sc_io_hdl) != 0)
  panic("%s: unable to subregion USB host registers",
      device_get_name(self));

 rid = 0;
 if (hwtype == HWTYPE_MV_EHCI_V1) {
  irq_err = bus_alloc_resource_any(self, SYS_RES_IRQ, &rid,
      RF_SHAREABLE | RF_ACTIVE);
  if (irq_err == ((void*)0)) {
   device_printf(self, "Could not allocate error irq\n");
   mv_ehci_detach(self);
   return (ENXIO);
  }
  rid = 1;
 }






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
 device_set_desc(sc->sc_bus.bdev, EHCI_HC_DEVSTR);

 sprintf(sc->sc_vendor, "Marvell");

 if (hwtype == HWTYPE_MV_EHCI_V1) {
  err = bus_setup_intr(self, irq_err, INTR_TYPE_BIO,
      err_intr, ((void*)0), sc, &ih_err);
  if (err) {
   device_printf(self, "Could not setup error irq, %d\n", err);
   ih_err = ((void*)0);
   goto error;
  }
 }

 EWRITE4(sc, USB_BRIDGE_INTR_MASK, MV_USB_ADDR_DECODE_ERR |
     MV_USB_HOST_UNDERFLOW | MV_USB_HOST_OVERFLOW |
     MV_USB_DEVICE_UNDERFLOW);

 err = bus_setup_intr(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);
 if (err) {
  device_printf(self, "Could not setup irq, %d\n", err);
  sc->sc_intr_hdl = ((void*)0);
  goto error;
 }
 sc->sc_vendor_post_reset = mv_ehci_post_reset;
 if (bootverbose)
  device_printf(self, "5.24 GL USB-2 workaround enabled\n");


 sc->sc_flags |= EHCI_SCFLG_TT | EHCI_SCFLG_NORESTERM;
 sc->sc_vendor_get_port_speed = ehci_get_port_speed_portsc;
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
 mv_ehci_detach(self);
 return (ENXIO);
}
