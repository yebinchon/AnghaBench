
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pci_devinst {int pi_vmctx; } ;
struct hda_softc {struct pci_devinst* pci_dev; } ;


 int assert (struct pci_devinst*) ;
 void* paddr_guest2host (int ,uintptr_t,size_t) ;

__attribute__((used)) static void *
hda_dma_get_vaddr(struct hda_softc *sc, uint64_t dma_paddr, size_t len)
{
 struct pci_devinst *pi = sc->pci_dev;

 assert(pi);

 return (paddr_guest2host(pi->pi_vmctx, (uintptr_t)dma_paddr, len));
}
