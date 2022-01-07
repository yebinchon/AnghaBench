
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int dma_bits; int bdev; int devices_max; int devices; int parent; } ;
struct TYPE_10__ {int sc_id_vendor; int sc_flags; TYPE_2__ sc_bus; int sc_vendor; int * sc_intr_hdl; int * sc_irq_res; int * sc_io_tag; int sc_io_hdl; int * sc_io_res; int sc_devices; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int driver_intr_t ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int EHCI_MAX_DEVICES ;
 int EHCI_SCFLG_DONEINIT ;
 int EHCI_SCFLG_DONTRESET ;
 int EHCI_SCFLG_NORESTERM ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int FSL_EHCI_REG_OFF ;
 int FSL_EHCI_REG_SIZE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_GET_DMA_TAG (int ) ;
 int bs_le_tag ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_setup_intr (int ,int *,int,int *,int *,TYPE_1__*,int **) ;
 int bus_space_subregion (int ,int ,int ,int ,int *) ;
 int clear_port_power (TYPE_1__*) ;
 int device_add_child (int ,char*,int) ;
 TYPE_1__* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int ) ;
 int device_set_ivars (int ,TYPE_2__*) ;
 int ehci_init (TYPE_1__*) ;
 scalar_t__ ehci_interrupt ;
 int ehci_iterate_hw_softc ;
 int ehci_reset (TYPE_1__*) ;
 int enable_usb (int ,int ,int ) ;
 int fsl_ehci_detach (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int set_32b_prefetch (int ,int ) ;
 int set_snooping (int ,int ) ;
 int set_to_host_mode (TYPE_1__*) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
fsl_ehci_attach(device_t self)
{
 ehci_softc_t *sc;
 int rid;
 int err;
 bus_space_handle_t ioh;
 bus_space_tag_t iot;

 sc = device_get_softc(self);
 rid = 0;

 sc->sc_bus.parent = self;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
 sc->sc_bus.dma_bits = 32;

 if (usb_bus_mem_alloc_all(&sc->sc_bus,
     USB_GET_DMA_TAG(self), &ehci_iterate_hw_softc))
  return (ENOMEM);


 sc->sc_io_res = bus_alloc_resource_any(self, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_io_res == ((void*)0)) {
  err = fsl_ehci_detach(self);
  if (err) {
   device_printf(self,
       "Detach of the driver failed with error %d\n",
       err);
  }
  return (ENXIO);
 }
 iot = rman_get_bustag(sc->sc_io_res);





 ioh = rman_get_bushandle(sc->sc_io_res);

 err = bus_space_subregion(iot, ioh, FSL_EHCI_REG_OFF, FSL_EHCI_REG_SIZE,
     &sc->sc_io_hdl);
 if (err != 0) {
  err = fsl_ehci_detach(self);
  if (err) {
   device_printf(self,
       "Detach of the driver failed with error %d\n",
       err);
  }
  return (ENXIO);
 }


 sc->sc_io_tag = &bs_le_tag;


 sc->sc_irq_res = bus_alloc_resource_any(self, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->sc_irq_res == ((void*)0)) {
  err = fsl_ehci_detach(self);
  if (err) {
   device_printf(self,
       "Detach of the driver failed with error %d\n",
       err);
  }
  return (ENXIO);
 }


 err = bus_setup_intr(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);
 if (err) {
  device_printf(self, "Could not setup irq, %d\n", err);
  sc->sc_intr_hdl = ((void*)0);
  err = fsl_ehci_detach(self);
  if (err) {
   device_printf(self,
       "Detach of the driver failed with error %d\n",
       err);
  }
  return (ENXIO);
 }


 sc->sc_bus.bdev = device_add_child(self, "usbus", -1);
 if (!sc->sc_bus.bdev) {
  device_printf(self, "Could not add USB device\n");
  err = fsl_ehci_detach(self);
  if (err) {
   device_printf(self,
       "Detach of the driver failed with error %d\n",
       err);
  }
  return (ENOMEM);
 }
 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);

 sc->sc_id_vendor = 0x1234;
 strlcpy(sc->sc_vendor, "Freescale", sizeof(sc->sc_vendor));


 err = ehci_reset(sc);
 if (err) {
  device_printf(self, "Could not reset the controller\n");
  err = fsl_ehci_detach(self);
  if (err) {
   device_printf(self,
       "Detach of the driver failed with error %d\n",
       err);
  }
  return (ENXIO);
 }

 enable_usb(self, iot, ioh);
 set_snooping(iot, ioh);
 set_to_host_mode(sc);
 set_32b_prefetch(iot, ioh);





 clear_port_power(sc);


 sc->sc_flags |= EHCI_SCFLG_DONTRESET | EHCI_SCFLG_NORESTERM;

 err = ehci_init(sc);
 if (!err) {
  sc->sc_flags |= EHCI_SCFLG_DONEINIT;
  err = device_probe_and_attach(sc->sc_bus.bdev);
 }

 if (err) {
  device_printf(self, "USB init failed err=%d\n", err);
  err = fsl_ehci_detach(self);
  if (err) {
   device_printf(self,
       "Detach of the driver failed with error %d\n",
       err);
  }
  return (EIO);
 }

 return (0);
}
