
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sc_bus; } ;
typedef TYPE_1__ ohci_softc_t ;


 int DPRINTF (char*) ;
 int ohci_controller_init (TYPE_1__*,int ) ;
 int ohci_do_poll (int *) ;
 int ohci_dumpregs (TYPE_1__*) ;
 int ohcidebug ;

__attribute__((used)) static void
ohci_resume(ohci_softc_t *sc)
{
 DPRINTF("\n");







 ohci_controller_init(sc, 0);


 ohci_do_poll(&sc->sc_bus);
}
