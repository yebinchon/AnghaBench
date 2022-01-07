
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bdev; } ;
struct TYPE_5__ {TYPE_2__ sc_bus; int * sc_io_res; int * sc_irq_res; int * sc_intr_hdl; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef scalar_t__ device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (scalar_t__,int ,int ,int *) ;
 int bus_teardown_intr (scalar_t__,int *,int *) ;
 int device_delete_child (scalar_t__,scalar_t__) ;
 int device_delete_children (scalar_t__) ;
 int device_detach (scalar_t__) ;
 TYPE_1__* device_get_softc (scalar_t__) ;
 int device_printf (scalar_t__,char*,int) ;
 int ehci_detach (TYPE_1__*) ;
 int ehci_iterate_hw_softc ;
 int usb_bus_mem_free_all (TYPE_2__*,int *) ;

__attribute__((used)) static int
ehci_msm_detach(device_t dev)
{
 ehci_softc_t *sc;
 device_t bdev;
 int err;

 sc = device_get_softc(dev);

 if (sc->sc_bus.bdev) {
  bdev = sc->sc_bus.bdev;
  device_detach(bdev);
  device_delete_child(dev, bdev);
 }

 device_delete_children(dev);

 if (sc->sc_irq_res && sc->sc_intr_hdl) {

  ehci_detach(sc);

  err = bus_teardown_intr(dev, sc->sc_irq_res, sc->sc_intr_hdl);
  if (err)
   device_printf(dev, "Could not tear down irq, %d\n",
       err);
  sc->sc_intr_hdl = ((void*)0);
 }

 if (sc->sc_irq_res) {
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
  sc->sc_irq_res = ((void*)0);
 }
 if (sc->sc_io_res) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0,
      sc->sc_io_res);
  sc->sc_io_res = ((void*)0);
 }

 usb_bus_mem_free_all(&sc->sc_bus, &ehci_iterate_hw_softc);

 return (0);
}
