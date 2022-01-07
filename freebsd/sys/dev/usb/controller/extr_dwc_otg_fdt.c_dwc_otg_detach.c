
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc_bus; int * sc_io_res; int * sc_irq_res; int * sc_intr_hdl; } ;
struct dwc_otg_fdt_softc {TYPE_1__ sc_otg; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_delete_children (int ) ;
 struct dwc_otg_fdt_softc* device_get_softc (int ) ;
 int dwc_otg_uninit (TYPE_1__*) ;
 int usb_bus_mem_free_all (int *,int *) ;

int
dwc_otg_detach(device_t dev)
{
 struct dwc_otg_fdt_softc *sc = device_get_softc(dev);


 device_delete_children(dev);

 if (sc->sc_otg.sc_irq_res && sc->sc_otg.sc_intr_hdl) {



  dwc_otg_uninit(&sc->sc_otg);

  bus_teardown_intr(dev, sc->sc_otg.sc_irq_res,
      sc->sc_otg.sc_intr_hdl);
  sc->sc_otg.sc_intr_hdl = ((void*)0);
 }

 if (sc->sc_otg.sc_irq_res) {
  bus_release_resource(dev, SYS_RES_IRQ, 0,
      sc->sc_otg.sc_irq_res);
  sc->sc_otg.sc_irq_res = ((void*)0);
 }

 if (sc->sc_otg.sc_io_res) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0,
      sc->sc_otg.sc_io_res);
  sc->sc_otg.sc_io_res = ((void*)0);
 }
 usb_bus_mem_free_all(&sc->sc_otg.sc_bus, ((void*)0));

 return (0);
}
