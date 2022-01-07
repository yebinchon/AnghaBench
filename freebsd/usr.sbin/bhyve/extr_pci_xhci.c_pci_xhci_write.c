
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vmctx {int dummy; } ;
struct pci_xhci_softc {scalar_t__ dboff; scalar_t__ rtsoff; scalar_t__ regsend; int mtx; } ;
struct pci_devinst {struct pci_xhci_softc* pi_arg; } ;


 int WPRINTF (char*) ;
 scalar_t__ XHCI_CAPLEN ;
 int assert (int) ;
 int pci_xhci_dbregs_write (struct pci_xhci_softc*,scalar_t__,scalar_t__) ;
 int pci_xhci_hostop_write (struct pci_xhci_softc*,scalar_t__,scalar_t__) ;
 int pci_xhci_rtsregs_write (struct pci_xhci_softc*,scalar_t__,scalar_t__) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
pci_xhci_write(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
                int baridx, uint64_t offset, int size, uint64_t value)
{
 struct pci_xhci_softc *sc;

 sc = pi->pi_arg;

 assert(baridx == 0);


 pthread_mutex_lock(&sc->mtx);
 if (offset < XHCI_CAPLEN)
  WPRINTF(("pci_xhci: write RO-CAPs offset %ld\r\n", offset));
 else if (offset < sc->dboff)
  pci_xhci_hostop_write(sc, offset, value);
 else if (offset < sc->rtsoff)
  pci_xhci_dbregs_write(sc, offset, value);
 else if (offset < sc->regsend)
  pci_xhci_rtsregs_write(sc, offset, value);
 else
  WPRINTF(("pci_xhci: write invalid offset %ld\r\n", offset));

 pthread_mutex_unlock(&sc->mtx);
}
