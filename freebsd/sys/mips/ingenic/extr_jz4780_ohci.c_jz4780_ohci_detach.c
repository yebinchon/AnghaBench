
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bdev; } ;
struct TYPE_4__ {TYPE_1__ sc_bus; scalar_t__ sc_io_hdl; scalar_t__ sc_io_tag; int * sc_io_res; int * sc_irq_res; int * sc_intr_hdl; } ;
struct jz4780_ohci_softc {int gpio_vbus; TYPE_2__ sc_ohci; int * clk; } ;
typedef scalar_t__ device_t ;


 int M_DEVBUF ;
 int OHCI_CONTROL ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (scalar_t__,int ,int ,int *) ;
 int bus_space_write_4 (scalar_t__,scalar_t__,int ,int ) ;
 int bus_teardown_intr (scalar_t__,int *,int *) ;
 int clk_release (int *) ;
 int device_delete_child (scalar_t__,scalar_t__) ;
 int device_delete_children (scalar_t__) ;
 int device_detach (scalar_t__) ;
 struct jz4780_ohci_softc* device_get_softc (scalar_t__) ;
 int free (int ,int ) ;
 int ohci_detach (TYPE_2__*) ;
 int ohci_iterate_hw_softc ;
 int usb_bus_mem_free_all (TYPE_1__*,int *) ;

__attribute__((used)) static int
jz4780_ohci_detach(device_t dev)
{
 struct jz4780_ohci_softc *sc = device_get_softc(dev);
 device_t bdev;

 if (sc->sc_ohci.sc_bus.bdev) {
  bdev = sc->sc_ohci.sc_bus.bdev;
  device_detach(bdev);
  device_delete_child(dev, bdev);
 }

 device_delete_children(dev);
 if (sc->sc_ohci.sc_io_res != ((void*)0)) {
  bus_space_write_4(sc->sc_ohci.sc_io_tag, sc->sc_ohci.sc_io_hdl,
      OHCI_CONTROL, 0);
 }

 if (sc->sc_ohci.sc_intr_hdl) {
  bus_teardown_intr(dev, sc->sc_ohci.sc_irq_res, sc->sc_ohci.sc_intr_hdl);
  sc->sc_ohci.sc_intr_hdl = ((void*)0);
 }

 if (sc->sc_ohci.sc_irq_res && sc->sc_ohci.sc_intr_hdl) {



  ohci_detach(&sc->sc_ohci);

  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_ohci.sc_irq_res);
  sc->sc_ohci.sc_irq_res = ((void*)0);
 }
 if (sc->sc_ohci.sc_io_res) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_ohci.sc_io_res);
  sc->sc_ohci.sc_io_res = ((void*)0);
  sc->sc_ohci.sc_io_tag = 0;
  sc->sc_ohci.sc_io_hdl = 0;
 }

 if (sc->clk != ((void*)0))
  clk_release(sc->clk);

 usb_bus_mem_free_all(&sc->sc_ohci.sc_bus, &ohci_iterate_hw_softc);
 free(sc->gpio_vbus, M_DEVBUF);
 return (0);
}
