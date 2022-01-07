
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ehci_softc_t ;


 int DPRINTF (char*) ;
 int ehci_hcreset (int *) ;

__attribute__((used)) static void
ehci_suspend(ehci_softc_t *sc)
{
 DPRINTF("stopping the HC\n");


 ehci_hcreset(sc);
}
