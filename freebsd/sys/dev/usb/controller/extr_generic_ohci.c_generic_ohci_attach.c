
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct phy_list {int phy; int rst; int clk; } ;
struct hwrst_list {int phy; int rst; int clk; } ;
struct TYPE_4__ {int dma_bits; scalar_t__ bdev; int devices_max; int devices; int parent; } ;
struct TYPE_5__ {scalar_t__ sc_io_res; scalar_t__ sc_irq_res; TYPE_1__ sc_bus; int * sc_intr_hdl; int sc_vendor; int sc_io_size; int sc_io_hdl; int sc_io_tag; int sc_devices; } ;
struct generic_ohci_softc {TYPE_2__ ohci_sc; int phy_list; int rst_list; int clk_list; } ;
struct clk_list {int phy; int rst; int clk; } ;
typedef int phy_t ;
typedef int hwreset_t ;
typedef int driver_intr_t ;
typedef int device_t ;
typedef int clk_t ;


 int ENOMEM ;
 int ENXIO ;
 scalar_t__ GENERIC_USB_INIT (int ) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OHCI_MAX_DEVICES ;
 int PHY_USB_MODE_HOST ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct phy_list*,int ) ;
 int USB_GET_DMA_TAG (int ) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_setup_intr (int ,scalar_t__,int,int *,int *,struct generic_ohci_softc*,int **) ;
 int clk_enable (int ) ;
 scalar_t__ clk_get_by_ofw_index (int ,int ,int,int *) ;
 int clk_get_name (int ) ;
 scalar_t__ device_add_child (int ,char*,int) ;
 struct generic_ohci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_and_attach (scalar_t__) ;
 int device_set_ivars (scalar_t__,TYPE_1__*) ;
 int generic_ohci_detach (int ) ;
 int hwreset_deassert (int ) ;
 scalar_t__ hwreset_get_by_ofw_idx (int ,int ,int,int *) ;
 struct phy_list* malloc (int,int ,int) ;
 int next ;
 int ohci_init (TYPE_2__*) ;
 scalar_t__ ohci_interrupt ;
 int ohci_iterate_hw_softc ;
 int phy_enable (int ) ;
 scalar_t__ phy_get_by_ofw_idx (int ,int ,int,int *) ;
 int phy_usb_set_mode (int ,int ) ;
 int rman_get_bushandle (scalar_t__) ;
 int rman_get_bustag (scalar_t__) ;
 int rman_get_size (scalar_t__) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
generic_ohci_attach(device_t dev)
{
 struct generic_ohci_softc *sc = device_get_softc(dev);
 int err, rid;
 sc->ohci_sc.sc_bus.parent = dev;
 sc->ohci_sc.sc_bus.devices = sc->ohci_sc.sc_devices;
 sc->ohci_sc.sc_bus.devices_max = OHCI_MAX_DEVICES;
 sc->ohci_sc.sc_bus.dma_bits = 32;


 if (usb_bus_mem_alloc_all(&sc->ohci_sc.sc_bus,
     USB_GET_DMA_TAG(dev), &ohci_iterate_hw_softc)) {
  return (ENOMEM);
 }

 rid = 0;
 sc->ohci_sc.sc_io_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &rid, RF_ACTIVE);
 if (sc->ohci_sc.sc_io_res == 0) {
  err = ENOMEM;
  goto error;
 }

 sc->ohci_sc.sc_io_tag = rman_get_bustag(sc->ohci_sc.sc_io_res);
 sc->ohci_sc.sc_io_hdl = rman_get_bushandle(sc->ohci_sc.sc_io_res);
 sc->ohci_sc.sc_io_size = rman_get_size(sc->ohci_sc.sc_io_res);

 rid = 0;
 sc->ohci_sc.sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->ohci_sc.sc_irq_res == 0) {
  err = ENXIO;
  goto error;
 }
 sc->ohci_sc.sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (sc->ohci_sc.sc_bus.bdev == 0) {
  err = ENXIO;
  goto error;
 }
 device_set_ivars(sc->ohci_sc.sc_bus.bdev, &sc->ohci_sc.sc_bus);

 strlcpy(sc->ohci_sc.sc_vendor, "Generic",
     sizeof(sc->ohci_sc.sc_vendor));

 err = bus_setup_intr(dev, sc->ohci_sc.sc_irq_res,
     INTR_TYPE_BIO | INTR_MPSAFE, ((void*)0),
     (driver_intr_t *)ohci_interrupt, sc, &sc->ohci_sc.sc_intr_hdl);
 if (err) {
  sc->ohci_sc.sc_intr_hdl = ((void*)0);
  goto error;
 }
 if (GENERIC_USB_INIT(dev) != 0) {
  err = ENXIO;
  goto error;
 }

 err = ohci_init(&sc->ohci_sc);
 if (err == 0)
  err = device_probe_and_attach(sc->ohci_sc.sc_bus.bdev);
 if (err)
  goto error;

 return (0);
error:
 generic_ohci_detach(dev);
 return (err);
}
