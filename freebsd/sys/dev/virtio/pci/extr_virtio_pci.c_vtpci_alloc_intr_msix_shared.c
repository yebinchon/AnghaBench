
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int vtpci_flags; } ;


 int ENOTSUP ;
 int VTPCI_FLAG_MSIX ;
 int VTPCI_FLAG_NO_MSIX ;
 int VTPCI_FLAG_SHARED_MSIX ;
 int vtpci_alloc_msix (struct vtpci_softc*,int) ;
 scalar_t__ vtpci_disable_msix ;

__attribute__((used)) static int
vtpci_alloc_intr_msix_shared(struct vtpci_softc *sc)
{
 int error;

 if (vtpci_disable_msix != 0 ||
     sc->vtpci_flags & VTPCI_FLAG_NO_MSIX)
  return (ENOTSUP);

 error = vtpci_alloc_msix(sc, 1);
 if (error)
  return (error);

 sc->vtpci_flags |= VTPCI_FLAG_MSIX | VTPCI_FLAG_SHARED_MSIX;

 return (0);
}
