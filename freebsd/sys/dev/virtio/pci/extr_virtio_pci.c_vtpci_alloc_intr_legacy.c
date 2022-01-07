
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int vtpci_flags; } ;


 int VTPCI_FLAG_LEGACY ;

__attribute__((used)) static int
vtpci_alloc_intr_legacy(struct vtpci_softc *sc)
{

 sc->vtpci_flags |= VTPCI_FLAG_LEGACY;

 return (0);
}
