
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dma_bits; int * bdev; int devices_max; int devices; void* parent; } ;
struct TYPE_6__ {int sc_flags; TYPE_2__ sc_bus; int sc_vendor_get_port_speed; int sc_vendor_post_reset; int sc_vendor; int sc_id_vendor; int sc_intr_hdl; int sc_io_hdl; int sc_io_tag; int sc_devices; } ;
struct imx_ehci_softc {void* dev; int * ehci_irq_res; int * ehci_mem_res; TYPE_1__ ehci_softc; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int driver_intr_t ;
typedef void* device_t ;


 int EHCI_MAX_DEVICES ;
 int EHCI_SCFLG_DONEINIT ;
 int EHCI_SCFLG_NORESTERM ;
 int EHCI_SCFLG_TT ;
 int ENOMEM ;
 int ENXIO ;
 int IMX_EHCI_REG_OFF ;
 int IMX_EHCI_REG_SIZE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_GET_DMA_TAG (void*) ;
 int USB_VENDOR_FREESCALE ;
 void* bus_alloc_resource_any (void*,int ,int*,int ) ;
 int bus_setup_intr (void*,int *,int,int *,int *,TYPE_1__*,int *) ;
 int bus_space_subregion (int ,int ,int ,int ,int *) ;
 int * device_add_child (void*,char*,int) ;
 struct imx_ehci_softc* device_get_softc (void*) ;
 int device_printf (void*,char*,...) ;
 int device_probe_and_attach (int *) ;
 int device_set_ivars (int *,TYPE_2__*) ;
 int ehci_get_port_speed_portsc ;
 int ehci_init (TYPE_1__*) ;
 scalar_t__ ehci_interrupt ;
 int ehci_iterate_hw_softc ;
 int imx_ccm_usb_enable (void*) ;
 int imx_ehci_detach (void*) ;
 int imx_ehci_disable_oc (struct imx_ehci_softc*) ;
 int imx_ehci_post_reset ;
 int ofw_bus_get_node (void*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int
imx_ehci_attach(device_t dev)
{
 struct imx_ehci_softc *sc;
 ehci_softc_t *esc;
 int err, rid;

 sc = device_get_softc(dev);
 sc->dev = dev;
 esc = &sc->ehci_softc;
 err = 0;


 rid = 0;
 sc->ehci_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->ehci_mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  err = ENXIO;
  goto out;
 }

 rid = 0;
 sc->ehci_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->ehci_irq_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate IRQ resources\n");
  err = ENXIO;
  goto out;
 }

 esc->sc_io_tag = rman_get_bustag(sc->ehci_mem_res);
 esc->sc_bus.parent = dev;
 esc->sc_bus.devices = esc->sc_devices;
 esc->sc_bus.devices_max = EHCI_MAX_DEVICES;
 esc->sc_bus.dma_bits = 32;


 if (usb_bus_mem_alloc_all(&esc->sc_bus, USB_GET_DMA_TAG(dev),
     &ehci_iterate_hw_softc) != 0) {
  device_printf(dev, "usb_bus_mem_alloc_all() failed\n");
  err = ENOMEM;
  goto out;
 }





 err = bus_space_subregion(esc->sc_io_tag,
     rman_get_bushandle(sc->ehci_mem_res),
     IMX_EHCI_REG_OFF, IMX_EHCI_REG_SIZE, &esc->sc_io_hdl);
 if (err != 0) {
  device_printf(dev, "bus_space_subregion() failed\n");
  err = ENXIO;
  goto out;
 }


 err = bus_setup_intr(dev, sc->ehci_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     ((void*)0), (driver_intr_t *)ehci_interrupt, esc, &esc->sc_intr_hdl);
 if (err != 0) {
  device_printf(dev, "Could not setup IRQ\n");
  goto out;
 }


 imx_ccm_usb_enable(dev);


 if (OF_hasprop(ofw_bus_get_node(sc->dev), "disable-over-current"))
  imx_ehci_disable_oc(sc);


 esc->sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (esc->sc_bus.bdev == ((void*)0)) {
  device_printf(dev, "Could not add USB device\n");
  goto out;
 }
 device_set_ivars(esc->sc_bus.bdev, &esc->sc_bus);

 esc->sc_id_vendor = USB_VENDOR_FREESCALE;
 strlcpy(esc->sc_vendor, "Freescale", sizeof(esc->sc_vendor));





 esc->sc_flags |= EHCI_SCFLG_NORESTERM | EHCI_SCFLG_TT;
 esc->sc_vendor_post_reset = imx_ehci_post_reset;
 esc->sc_vendor_get_port_speed = ehci_get_port_speed_portsc;

 err = ehci_init(esc);
 if (err != 0) {
  device_printf(dev, "USB init failed, usb_err_t=%d\n",
      err);
  goto out;
 }
 esc->sc_flags |= EHCI_SCFLG_DONEINIT;


 err = device_probe_and_attach(esc->sc_bus.bdev);
 if (err != 0) {
  device_printf(dev,
      "device_probe_and_attach() failed\n");
  goto out;
 }

 err = 0;

out:

 if (err != 0)
  imx_ehci_detach(dev);

 return (err);
}
