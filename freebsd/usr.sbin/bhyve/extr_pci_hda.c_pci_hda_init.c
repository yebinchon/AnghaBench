
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
struct pci_devinst {struct hda_softc* pi_arg; } ;
struct hda_softc {struct pci_devinst* pci_dev; } ;


 int HDA_INTEL_82801G ;
 int HDA_LAST_OFFSET ;
 int INTEL_VENDORID ;
 int PCIBAR_MEM32 ;
 int PCIC_MULTIMEDIA ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_HDCTL ;
 int PCIR_SUBCLASS ;
 int PCIR_VENDOR ;
 int PCIS_MULTIMEDIA_HDA ;
 int assert (int ) ;
 struct hda_softc* hda_init (char*) ;
 int pci_emul_alloc_bar (struct pci_devinst*,int ,int ,int ) ;
 int pci_lintr_request (struct pci_devinst*) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int ) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int) ;

__attribute__((used)) static int
pci_hda_init(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
 struct hda_softc *sc = ((void*)0);

 assert(ctx != ((void*)0));
 assert(pi != ((void*)0));

 pci_set_cfgdata16(pi, PCIR_VENDOR, INTEL_VENDORID);
 pci_set_cfgdata16(pi, PCIR_DEVICE, HDA_INTEL_82801G);

 pci_set_cfgdata8(pi, PCIR_SUBCLASS, PCIS_MULTIMEDIA_HDA);
 pci_set_cfgdata8(pi, PCIR_CLASS, PCIC_MULTIMEDIA);


 pci_set_cfgdata8(pi, PCIR_HDCTL, 0x01);


 pci_emul_alloc_bar(pi, 0, PCIBAR_MEM32, HDA_LAST_OFFSET);


 pci_lintr_request(pi);

 sc = hda_init(opts);
 if (!sc)
  return (-1);

 sc->pci_dev = pi;
 pi->pi_arg = sc;

 return (0);
}
