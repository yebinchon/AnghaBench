
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sc_bus; } ;
typedef TYPE_1__ uhci_softc_t ;


 int UHCICMD (TYPE_1__*,int ) ;
 int UHCI_CMD_FGR ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int uhci_do_poll (int *) ;
 int uhci_dumpregs (TYPE_1__*) ;
 int uhci_reset (TYPE_1__*) ;
 int uhci_start (TYPE_1__*) ;
 int uhcidebug ;

__attribute__((used)) static void
uhci_resume(uhci_softc_t *sc)
{
 USB_BUS_LOCK(&sc->sc_bus);



 uhci_reset(sc);



 UHCICMD(sc, UHCI_CMD_FGR);



 uhci_start(sc);

 USB_BUS_UNLOCK(&sc->sc_bus);







 uhci_do_poll(&sc->sc_bus);
}
