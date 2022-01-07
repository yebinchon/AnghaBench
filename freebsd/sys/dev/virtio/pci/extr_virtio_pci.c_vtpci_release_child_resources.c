
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int dummy; } ;


 int vtpci_free_interrupts (struct vtpci_softc*) ;
 int vtpci_free_virtqueues (struct vtpci_softc*) ;

__attribute__((used)) static void
vtpci_release_child_resources(struct vtpci_softc *sc)
{

 vtpci_free_interrupts(sc);
 vtpci_free_virtqueues(sc);
}
