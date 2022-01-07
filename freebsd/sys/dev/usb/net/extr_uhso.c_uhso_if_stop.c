
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uhso_softc {TYPE_1__* sc_ifp; int * sc_if_xfer; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 size_t UHSO_IFNET_READ ;
 size_t UHSO_IFNET_WRITE ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
uhso_if_stop(struct uhso_softc *sc)
{

 usbd_transfer_stop(sc->sc_if_xfer[UHSO_IFNET_READ]);
 usbd_transfer_stop(sc->sc_if_xfer[UHSO_IFNET_WRITE]);
 sc->sc_ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
}
