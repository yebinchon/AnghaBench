
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_interrupt {int dummy; } ;
struct vtpci_softc {int vtpci_flags; int vtpci_nmsix_resources; struct vtpci_interrupt* vtpci_msix_vq_interrupts; struct vtpci_interrupt vtpci_device_interrupt; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int VTPCI_FLAG_LEGACY ;
 int VTPCI_FLAG_MSI ;
 struct vtpci_interrupt* malloc (int,int ,int) ;
 int vtpci_alloc_interrupt (struct vtpci_softc*,int,int,struct vtpci_interrupt*) ;

__attribute__((used)) static int
vtpci_alloc_intr_resources(struct vtpci_softc *sc)
{
 struct vtpci_interrupt *intr;
 int i, rid, flags, nvq_intrs, error;

 rid = 0;
 flags = RF_ACTIVE;

 if (sc->vtpci_flags & VTPCI_FLAG_LEGACY)
  flags |= RF_SHAREABLE;
 else
  rid = 1;






 intr = &sc->vtpci_device_interrupt;
 error = vtpci_alloc_interrupt(sc, rid, flags, intr);
 if (error || sc->vtpci_flags & (VTPCI_FLAG_LEGACY | VTPCI_FLAG_MSI))
  return (error);


 nvq_intrs = sc->vtpci_nmsix_resources - 1;

 intr = sc->vtpci_msix_vq_interrupts = malloc(nvq_intrs *
     sizeof(struct vtpci_interrupt), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (sc->vtpci_msix_vq_interrupts == ((void*)0))
  return (ENOMEM);

 for (i = 0, rid++; i < nvq_intrs; i++, rid++, intr++) {
  error = vtpci_alloc_interrupt(sc, rid, flags, intr);
  if (error)
   return (error);
 }

 return (0);
}
