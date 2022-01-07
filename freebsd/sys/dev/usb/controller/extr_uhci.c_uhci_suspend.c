
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sc_bus; } ;
typedef TYPE_1__ uhci_softc_t ;


 int UHCICMD (TYPE_1__*,int ) ;
 int UHCI_CMD_EGSM ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int uhci_dumpregs (TYPE_1__*) ;
 int uhci_reset (TYPE_1__*) ;
 int uhcidebug ;

__attribute__((used)) static void
uhci_suspend(uhci_softc_t *sc)
{






 USB_BUS_LOCK(&sc->sc_bus);



 uhci_reset(sc);



 UHCICMD(sc, UHCI_CMD_EGSM);

 USB_BUS_UNLOCK(&sc->sc_bus);
}
