
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc_bus; scalar_t__ sc_io_hdl; scalar_t__ sc_io_tag; int * sc_io_res; int * sc_irq_res; int * sc_intr_hdl; } ;
struct ar71xx_ohci_softc {TYPE_1__ sc_ohci; } ;
typedef int device_t ;


 int OHCI_CONTROL ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_space_write_4 (scalar_t__,scalar_t__,int ,int ) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_delete_children (int ) ;
 struct ar71xx_ohci_softc* device_get_softc (int ) ;
 int ohci_detach (TYPE_1__*) ;
 int ohci_iterate_hw_softc ;
 int usb_bus_mem_free_all (int *,int *) ;

__attribute__((used)) static int
ar71xx_ohci_detach(device_t dev)
{
 struct ar71xx_ohci_softc *sc = device_get_softc(dev);


 device_delete_children(dev);
 bus_space_write_4(sc->sc_ohci.sc_io_tag, sc->sc_ohci.sc_io_hdl,
     OHCI_CONTROL, 0);

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
 usb_bus_mem_free_all(&sc->sc_ohci.sc_bus, &ohci_iterate_hw_softc);

 return (0);
}
