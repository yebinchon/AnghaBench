
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sc_flags; int sc_bus; int * sc_intr_hdl; int sc_irq_res; } ;
struct imx_ehci_softc {int * ehci_mem_res; int * ehci_irq_res; TYPE_1__ ehci_softc; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int device_t ;


 int EHCI_SCFLG_DONEINIT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int *) ;
 int device_delete_children (int ) ;
 struct imx_ehci_softc* device_get_softc (int ) ;
 int ehci_detach (TYPE_1__*) ;
 int ehci_iterate_hw_softc ;
 int usb_bus_mem_free_all (int *,int *) ;

__attribute__((used)) static int
imx_ehci_detach(device_t dev)
{
 struct imx_ehci_softc *sc;
 ehci_softc_t *esc;
 int err;

 sc = device_get_softc(dev);

 esc = &sc->ehci_softc;


 if ((err = device_delete_children(dev)) != 0)
  return (err);

 if (esc->sc_flags & EHCI_SCFLG_DONEINIT)
  ehci_detach(esc);
 if (esc->sc_intr_hdl != ((void*)0))
  bus_teardown_intr(dev, esc->sc_irq_res,
      esc->sc_intr_hdl);
 if (sc->ehci_irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0,
      sc->ehci_irq_res);
 if (sc->ehci_mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0,
      sc->ehci_mem_res);

 usb_bus_mem_free_all(&esc->sc_bus, &ehci_iterate_hw_softc);

 return (0);
}
