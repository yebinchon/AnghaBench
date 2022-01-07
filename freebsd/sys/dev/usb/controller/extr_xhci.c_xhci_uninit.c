
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_softc {int sc_cmd_sx; int sc_cmd_cv; int sc_bus; } ;


 int cv_destroy (int *) ;
 int sx_destroy (int *) ;
 int usb_bus_mem_free_all (int *,int *) ;
 int xhci_iterate_hw_softc ;

void
xhci_uninit(struct xhci_softc *sc)
{






 usb_bus_mem_free_all(&sc->sc_bus, &xhci_iterate_hw_softc);

 cv_destroy(&sc->sc_cmd_cv);
 sx_destroy(&sc->sc_cmd_sx);
}
