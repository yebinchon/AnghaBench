
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int vtpci_flags; } ;


 int ENOTSUP ;
 int VTPCI_FLAG_MSI ;
 int VTPCI_FLAG_NO_MSI ;
 int vtpci_alloc_msi (struct vtpci_softc*) ;

__attribute__((used)) static int
vtpci_alloc_intr_msi(struct vtpci_softc *sc)
{
 int error;


 if (sc->vtpci_flags & VTPCI_FLAG_NO_MSI)
  return (ENOTSUP);

 error = vtpci_alloc_msi(sc);
 if (error)
  return (error);

 sc->vtpci_flags |= VTPCI_FLAG_MSI;

 return (0);
}
