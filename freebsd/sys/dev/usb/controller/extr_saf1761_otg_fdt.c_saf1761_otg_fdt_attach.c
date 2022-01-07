
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dma_bits; int * bdev; int devices_max; int devices; int parent; } ;
struct saf1761_otg_softc {TYPE_1__ sc_bus; int * sc_intr_hdl; int * sc_irq_res; int * sc_io_res; int sc_io_size; int sc_io_hdl; int sc_io_tag; int sc_devices; int sc_hw_mode; int sc_interrupt_cfg; } ;
typedef int param ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_TTY ;
 scalar_t__ OF_getprop (int ,char*,char**,int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SOTG_HW_MODE_CTRL_ANA_DIGI_OC ;
 int SOTG_HW_MODE_CTRL_DACK_POL ;
 int SOTG_HW_MODE_CTRL_DATA_BUS_WIDTH ;
 int SOTG_HW_MODE_CTRL_DREQ_POL ;
 int SOTG_HW_MODE_CTRL_INTR_LEVEL ;
 int SOTG_HW_MODE_CTRL_INTR_POL ;
 int SOTG_INTERRUPT_CFG_INTLVL ;
 int SOTG_INTERRUPT_CFG_INTPOL ;
 int SOTG_MAX_DEVICES ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int USB_GET_DMA_TAG (int ) ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int *,struct saf1761_otg_softc*,int **) ;
 int * device_add_child (int ,char*,int) ;
 struct saf1761_otg_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_probe_and_attach (int *) ;
 int device_set_ivars (int *,TYPE_1__*) ;
 int ofw_bus_get_node (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_size (int *) ;
 int saf1761_otg_fdt_detach (int ) ;
 int saf1761_otg_filter_interrupt ;
 int saf1761_otg_init (struct saf1761_otg_softc*) ;
 int saf1761_otg_interrupt ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ usb_bus_mem_alloc_all (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
saf1761_otg_fdt_attach(device_t dev)
{
 struct saf1761_otg_softc *sc = device_get_softc(dev);
 char param[24];
 int err;
 int rid;




 if (OF_getprop(ofw_bus_get_node(dev), "bus-width",
     &param, sizeof(param)) > 0) {
  param[sizeof(param) - 1] = 0;
  if (strcmp(param, "32") == 0)
   sc->sc_hw_mode |= SOTG_HW_MODE_CTRL_DATA_BUS_WIDTH;
 } else {

  sc->sc_hw_mode |= SOTG_HW_MODE_CTRL_DATA_BUS_WIDTH;
 }


 if (OF_getprop(ofw_bus_get_node(dev), "analog-oc",
     &param, sizeof(param)) > 0) {
  sc->sc_hw_mode |= SOTG_HW_MODE_CTRL_ANA_DIGI_OC;
 }


 if (OF_getprop(ofw_bus_get_node(dev), "dack-polarity",
     &param, sizeof(param)) > 0) {
  sc->sc_hw_mode |= SOTG_HW_MODE_CTRL_DACK_POL;
 }


 if (OF_getprop(ofw_bus_get_node(dev), "dreq-polarity",
     &param, sizeof(param)) > 0) {
  sc->sc_hw_mode |= SOTG_HW_MODE_CTRL_DREQ_POL;
 }


 if (OF_getprop(ofw_bus_get_node(dev), "int-polarity",
     &param, sizeof(param)) > 0) {
  sc->sc_interrupt_cfg |= SOTG_INTERRUPT_CFG_INTPOL;
  sc->sc_hw_mode |= SOTG_HW_MODE_CTRL_INTR_POL;
 }


 if (OF_getprop(ofw_bus_get_node(dev), "int-level",
     &param, sizeof(param)) > 0) {
  sc->sc_interrupt_cfg |= SOTG_INTERRUPT_CFG_INTLVL;
  sc->sc_hw_mode |= SOTG_HW_MODE_CTRL_INTR_LEVEL;
 }


 sc->sc_bus.parent = dev;
 sc->sc_bus.devices = sc->sc_devices;
 sc->sc_bus.devices_max = SOTG_MAX_DEVICES;
 sc->sc_bus.dma_bits = 32;


 if (usb_bus_mem_alloc_all(&sc->sc_bus,
     USB_GET_DMA_TAG(dev), ((void*)0))) {
  return (ENOMEM);
 }
 rid = 0;
 sc->sc_io_res =
     bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);

 if (sc->sc_io_res == ((void*)0))
  goto error;

 sc->sc_io_tag = rman_get_bustag(sc->sc_io_res);
 sc->sc_io_hdl = rman_get_bushandle(sc->sc_io_res);
 sc->sc_io_size = rman_get_size(sc->sc_io_res);


 rid = 1;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (sc->sc_irq_res == ((void*)0)) {

  rid = 0;
  sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
      RF_SHAREABLE | RF_ACTIVE);
  if (sc->sc_irq_res == ((void*)0))
   goto error;
 }

 sc->sc_bus.bdev = device_add_child(dev, "usbus", -1);
 if (sc->sc_bus.bdev == ((void*)0))
  goto error;

 device_set_ivars(sc->sc_bus.bdev, &sc->sc_bus);

 err = bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_TTY | INTR_MPSAFE,
     &saf1761_otg_filter_interrupt, &saf1761_otg_interrupt, sc, &sc->sc_intr_hdl);
 if (err) {
  sc->sc_intr_hdl = ((void*)0);
  goto error;
 }
 err = saf1761_otg_init(sc);
 if (err) {
  device_printf(dev, "Init failed\n");
  goto error;
 }
 err = device_probe_and_attach(sc->sc_bus.bdev);
 if (err) {
  device_printf(dev, "USB probe and attach failed\n");
  goto error;
 }
 return (0);

error:
 saf1761_otg_fdt_detach(dev);
 return (ENXIO);
}
