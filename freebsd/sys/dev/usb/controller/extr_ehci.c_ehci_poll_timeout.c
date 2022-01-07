
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ehci_softc_t ;


 int DPRINTFN (int,char*) ;
 int ehci_interrupt_poll (int *) ;

__attribute__((used)) static void
ehci_poll_timeout(void *arg)
{
 ehci_softc_t *sc = arg;

 DPRINTFN(3, "\n");
 ehci_interrupt_poll(sc);
}
