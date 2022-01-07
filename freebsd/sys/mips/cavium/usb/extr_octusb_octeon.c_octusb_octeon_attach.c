
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dma_bits; int bdev; int devices_max; int devices; int parent; } ;
struct TYPE_5__ {TYPE_1__ sc_bus; int ** sc_intr_hdl; int * sc_irq_res; int sc_devices; } ;
struct octusb_octeon_softc {TYPE_2__ sc_dci; } ;
typedef int driver_intr_t ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 scalar_t__ OCTEON_IRQ_USB0 ;
 int OCTUSB_MAX_DEVICES ;
 int OCTUSB_MAX_PORTS ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int USB_GET_DMA_TAG (int ) ;
 int bus_alloc_resource (int ,int ,int*,scalar_t__,scalar_t__,int,int ) ;
 int bus_setup_intr (int ,int ,int,int *,struct octusb_octeon_softc*,struct octusb_octeon_softc*,...) ;
 int cvmx_usb_get_num_ports () ;
 int device_add_child (int ,char*,int) ;
 struct octusb_octeon_softc* device_get_softc (int ) ;
 int device_probe_and_attach (int ) ;
 int device_set_ivars (int ,TYPE_1__*) ;
 int octusb_init (TYPE_2__*) ;
 scalar_t__ octusb_interrupt ;
 int octusb_octeon_detach (int ) ;
 int panic (char*,int) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
octusb_octeon_attach(device_t dev)
{
 struct octusb_octeon_softc *sc = device_get_softc(dev);
 int err;
 int rid;
 int nports;
 int i;




 sc->sc_dci.sc_bus.parent = dev;
 sc->sc_dci.sc_bus.devices = sc->sc_dci.sc_devices;
 sc->sc_dci.sc_bus.devices_max = OCTUSB_MAX_DEVICES;
 sc->sc_dci.sc_bus.dma_bits = 32;


 if (usb_bus_mem_alloc_all(&sc->sc_dci.sc_bus,
     USB_GET_DMA_TAG(dev), ((void*)0))) {
  return (ENOMEM);
 }
 nports = cvmx_usb_get_num_ports();
 if (nports > OCTUSB_MAX_PORTS)
  panic("octusb: too many USB ports %d", nports);
 for (i = 0; i < nports; i++) {
  rid = 0;
  sc->sc_dci.sc_irq_res[i] =
      bus_alloc_resource(dev, SYS_RES_IRQ, &rid,
          OCTEON_IRQ_USB0 + i, OCTEON_IRQ_USB0 + i, 1, RF_ACTIVE);
  if (!(sc->sc_dci.sc_irq_res[i])) {
   goto error;
  }





  err = bus_setup_intr(dev, sc->sc_dci.sc_irq_res[i], INTR_TYPE_BIO | INTR_MPSAFE,
      (driver_intr_t *)octusb_interrupt, sc, &sc->sc_dci.sc_intr_hdl[i]);

  if (err) {
   sc->sc_dci.sc_intr_hdl[i] = ((void*)0);
   goto error;
  }
 }

 sc->sc_dci.sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (!(sc->sc_dci.sc_bus.bdev)) {
  goto error;
 }
 device_set_ivars(sc->sc_dci.sc_bus.bdev, &sc->sc_dci.sc_bus);


 err = octusb_init(&sc->sc_dci);
 if (!err) {
  err = device_probe_and_attach(sc->sc_dci.sc_bus.bdev);
 }
 if (err) {
  goto error;
 }
 return (0);

error:
 octusb_octeon_detach(dev);
 return (ENXIO);
}
