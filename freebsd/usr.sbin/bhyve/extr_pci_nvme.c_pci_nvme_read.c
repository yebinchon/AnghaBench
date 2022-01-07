
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int dummy; } ;
struct pci_nvme_softc {int dummy; } ;
struct pci_devinst {struct pci_nvme_softc* pi_arg; } ;


 int DPRINTF (char*) ;
 int pci_emul_msix_tread (struct pci_devinst*,int ,int) ;
 int pci_msix_pba_bar (struct pci_devinst*) ;
 int pci_msix_table_bar (struct pci_devinst*) ;
 int pci_nvme_read_bar_0 (struct pci_nvme_softc*,int ,int) ;

__attribute__((used)) static uint64_t
pci_nvme_read(struct vmctx *ctx, int vcpu, struct pci_devinst *pi, int baridx,
    uint64_t offset, int size)
{
 struct pci_nvme_softc* sc = pi->pi_arg;

 if (baridx == pci_msix_table_bar(pi) ||
     baridx == pci_msix_pba_bar(pi)) {
  DPRINTF(("nvme-read bar: %d, msix: regoff 0x%lx, size %d\r\n",
          baridx, offset, size));

  return pci_emul_msix_tread(pi, offset, size);
 }

 switch (baridx) {
 case 0:
         return pci_nvme_read_bar_0(sc, offset, size);

 default:
  DPRINTF(("unknown bar %d, 0x%lx\r\n", baridx, offset));
 }

 return (0);
}
