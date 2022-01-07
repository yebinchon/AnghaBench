
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ohci_softc_t ;


 int DPRINTF (char*) ;
 int ohci_controller_init (int *,int) ;
 int ohci_dumpregs (int *) ;
 int ohcidebug ;

__attribute__((used)) static void
ohci_suspend(ohci_softc_t *sc)
{
 DPRINTF("\n");







 ohci_controller_init(sc, 1);
}
