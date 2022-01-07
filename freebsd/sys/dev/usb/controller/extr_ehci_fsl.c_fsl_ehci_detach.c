
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * bdev; } ;
struct TYPE_6__ {int sc_flags; scalar_t__ sc_io_hdl; scalar_t__ sc_io_tag; int * sc_io_res; int * sc_irq_res; TYPE_1__ sc_bus; int * sc_intr_hdl; } ;
typedef TYPE_2__ ehci_softc_t ;
typedef int device_t ;


 int EHCI_SCFLG_DONEINIT ;
 int EHCI_USBINTR ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_space_write_4 (scalar_t__,scalar_t__,int ,int ) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_delete_child (int ,int *) ;
 int device_delete_children (int ) ;
 TYPE_2__* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int ehci_detach (TYPE_2__*) ;

__attribute__((used)) static int
fsl_ehci_detach(device_t self)
{

 int err;
 ehci_softc_t *sc;

 sc = device_get_softc(self);



 if (sc->sc_flags & EHCI_SCFLG_DONEINIT) {
  ehci_detach(sc);
  sc->sc_flags &= ~EHCI_SCFLG_DONEINIT;
 }


 if (sc->sc_io_tag && sc->sc_io_hdl)
  bus_space_write_4(sc->sc_io_tag, sc->sc_io_hdl, EHCI_USBINTR, 0);

 if (sc->sc_irq_res && sc->sc_intr_hdl) {
  err = bus_teardown_intr(self, sc->sc_irq_res, sc->sc_intr_hdl);
  if (err) {
   device_printf(self, "Could not tear down irq, %d\n",
       err);
   return (err);
  }
  sc->sc_intr_hdl = ((void*)0);
 }

 if (sc->sc_bus.bdev) {
  device_delete_child(self, sc->sc_bus.bdev);
  sc->sc_bus.bdev = ((void*)0);
 }


 device_delete_children(self);

 if (sc->sc_irq_res) {
  bus_release_resource(self, SYS_RES_IRQ, 0, sc->sc_irq_res);
  sc->sc_irq_res = ((void*)0);
 }

 if (sc->sc_io_res) {
  bus_release_resource(self, SYS_RES_MEMORY, 0, sc->sc_io_res);
  sc->sc_io_res = ((void*)0);
  sc->sc_io_tag = 0;
  sc->sc_io_hdl = 0;
 }

 return (0);
}
