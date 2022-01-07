
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sc_bus; } ;
typedef TYPE_1__ ehci_softc_t ;


 int ehci_do_poll (int *) ;
 int ehci_hcreset (TYPE_1__*) ;
 int ehci_init_sub (TYPE_1__*) ;

__attribute__((used)) static void
ehci_resume(ehci_softc_t *sc)
{

 ehci_hcreset(sc);


 ehci_init_sub(sc);


 ehci_do_poll(&sc->sc_bus);
}
