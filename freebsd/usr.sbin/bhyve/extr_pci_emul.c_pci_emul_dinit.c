
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
struct pci_emul_dsoftc {int dummy; } ;
struct pci_devinst {struct pci_emul_dsoftc* pi_arg; } ;


 int DIOSZ ;
 int DMEMSZ ;
 int PCIBAR_IO ;
 int PCIBAR_MEM32 ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_VENDOR ;
 int PCI_EMUL_MSI_MSGS ;
 int assert (int) ;
 struct pci_emul_dsoftc* calloc (int,int) ;
 int pci_emul_add_msicap (struct pci_devinst*,int ) ;
 int pci_emul_alloc_bar (struct pci_devinst*,int,int ,int ) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int) ;

__attribute__((used)) static int
pci_emul_dinit(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
 int error;
 struct pci_emul_dsoftc *sc;

 sc = calloc(1, sizeof(struct pci_emul_dsoftc));

 pi->pi_arg = sc;

 pci_set_cfgdata16(pi, PCIR_DEVICE, 0x0001);
 pci_set_cfgdata16(pi, PCIR_VENDOR, 0x10DD);
 pci_set_cfgdata8(pi, PCIR_CLASS, 0x02);

 error = pci_emul_add_msicap(pi, PCI_EMUL_MSI_MSGS);
 assert(error == 0);

 error = pci_emul_alloc_bar(pi, 0, PCIBAR_IO, DIOSZ);
 assert(error == 0);

 error = pci_emul_alloc_bar(pi, 1, PCIBAR_MEM32, DMEMSZ);
 assert(error == 0);

 error = pci_emul_alloc_bar(pi, 2, PCIBAR_MEM32, DMEMSZ);
 assert(error == 0);

 return (0);
}
