
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dma_bits; int bdev; int devices_max; int devices; int parent; } ;
struct TYPE_6__ {int sc_flags; TYPE_2__ sc_bus; int * sc_intr_hdl; int sc_vendor; int sc_io_hdl; int sc_io_size; void* sc_io_tag; int sc_devices; } ;
struct ehci_msm_softc {int * res; TYPE_1__ base; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int driver_intr_t ;
typedef int device_t ;
typedef int bus_space_handle_t ;


 int EHCI_HC_DEVSTR ;
 int EHCI_MAX_DEVICES ;
 int EHCI_SCFLG_DONEINIT ;
 int EHCI_SCFLG_DONTRESET ;
 int EHCI_SCFLG_NORESTERM ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int USB_GET_DMA_TAG (int ) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int *,TYPE_1__*,int **) ;
 scalar_t__ bus_space_subregion (void*,int ,int,int ,int *) ;
 int device_add_child (int ,char*,int) ;
 int device_get_name (int ) ;
 struct ehci_msm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (int ) ;
 int device_set_desc (int ,int ) ;
 int device_set_ivars (int ,TYPE_2__*) ;
 int ehci_init (TYPE_1__*) ;
 scalar_t__ ehci_interrupt ;
 int ehci_iterate_hw_softc ;
 int ehci_msm_detach (int ) ;
 int ehci_msm_spec ;
 int panic (char*,int ) ;
 int rman_get_bushandle (int ) ;
 void* rman_get_bustag (int ) ;
 int rman_get_size (int ) ;
 int sprintf (int ,char*) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
ehci_msm_attach(device_t dev)
{
 struct ehci_msm_softc *esc;
 bus_space_handle_t bsh;
 ehci_softc_t *sc;
 int err;

 esc = device_get_softc(dev);
 sc = &esc->base;
 sc->sc_bus.parent = dev;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
 sc->sc_bus.dma_bits = 32;

 if (bus_alloc_resources(dev, ehci_msm_spec, esc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 sc->sc_io_tag = rman_get_bustag(esc->res[0]);


 if (usb_bus_mem_alloc_all(&sc->sc_bus,
     USB_GET_DMA_TAG(dev), &ehci_iterate_hw_softc)) {
  return (ENOMEM);
 }


 sc->sc_io_tag = rman_get_bustag(esc->res[0]);
 bsh = rman_get_bushandle(esc->res[0]);
 sc->sc_io_size = rman_get_size(esc->res[0]);

 if (bus_space_subregion(sc->sc_io_tag, bsh, 0x100,
     sc->sc_io_size, &sc->sc_io_hdl) != 0)
  panic("%s: unable to subregion USB host registers",
      device_get_name(dev));

 sc->sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (!sc->sc_bus.bdev) {
  device_printf(dev, "Could not add USB device\n");
  goto error;
 }
 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);
 device_set_desc(sc->sc_bus.bdev, EHCI_HC_DEVSTR);

 sprintf(sc->sc_vendor, "Qualcomm");

 err = bus_setup_intr(dev, esc->res[2], INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);
 if (err) {
  device_printf(dev, "Could not setup irq, %d\n", err);
  sc->sc_intr_hdl = ((void*)0);
  goto error;
 }

 sc->sc_flags |= EHCI_SCFLG_DONTRESET | EHCI_SCFLG_NORESTERM;

 err = ehci_init(sc);
 if (!err) {
  sc->sc_flags |= EHCI_SCFLG_DONEINIT;
  err = device_probe_and_attach(sc->sc_bus.bdev);
 }

 if (err) {
  device_printf(dev, "USB init failed err=%d\n", err);
  goto error;
 }
 return (0);

error:
 ehci_msm_detach(dev);
 return (ENXIO);
}
