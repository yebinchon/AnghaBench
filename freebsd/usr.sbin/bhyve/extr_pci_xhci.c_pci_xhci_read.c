
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct vmctx {int dummy; } ;
struct pci_xhci_softc {scalar_t__ dboff; scalar_t__ rtsoff; scalar_t__ regsend; int mtx; } ;
struct pci_devinst {struct pci_xhci_softc* pi_arg; } ;


 int WPRINTF (char*) ;
 scalar_t__ XHCI_CAPLEN ;
 int assert (int) ;
 int pci_xhci_dbregs_read (struct pci_xhci_softc*,scalar_t__) ;
 int pci_xhci_hostcap_read (struct pci_xhci_softc*,scalar_t__) ;
 int pci_xhci_hostop_read (struct pci_xhci_softc*,scalar_t__) ;
 int pci_xhci_rtsregs_read (struct pci_xhci_softc*,scalar_t__) ;
 int pci_xhci_xecp_read (struct pci_xhci_softc*,scalar_t__) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static uint64_t
pci_xhci_read(struct vmctx *ctx, int vcpu, struct pci_devinst *pi, int baridx,
    uint64_t offset, int size)
{
 struct pci_xhci_softc *sc;
 uint32_t value;

 sc = pi->pi_arg;

 assert(baridx == 0);

 pthread_mutex_lock(&sc->mtx);
 if (offset < XHCI_CAPLEN)
  value = pci_xhci_hostcap_read(sc, offset);
 else if (offset < sc->dboff)
  value = pci_xhci_hostop_read(sc, offset);
 else if (offset < sc->rtsoff)
  value = pci_xhci_dbregs_read(sc, offset);
 else if (offset < sc->regsend)
  value = pci_xhci_rtsregs_read(sc, offset);
 else if (offset < (sc->regsend + 4*32))
  value = pci_xhci_xecp_read(sc, offset);
 else {
  value = 0;
  WPRINTF(("pci_xhci: read invalid offset %ld\r\n", offset));
 }

 pthread_mutex_unlock(&sc->mtx);

 switch (size) {
 case 1:
  value &= 0xFF;
  break;
 case 2:
  value &= 0xFFFF;
  break;
 case 4:
  value &= 0xFFFFFFFF;
  break;
 }

 return (value);
}
