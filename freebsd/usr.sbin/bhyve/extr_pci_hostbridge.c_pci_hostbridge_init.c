
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
struct pci_devinst {int dummy; } ;


 int PCIC_BRIDGE ;
 int PCIEM_TYPE_ROOT_PORT ;
 int PCIM_HDRTYPE_NORMAL ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_HDRTYPE ;
 int PCIR_SUBCLASS ;
 int PCIR_VENDOR ;
 int PCIS_BRIDGE_HOST ;
 int pci_emul_add_pciecap (struct pci_devinst*,int ) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int ) ;

__attribute__((used)) static int
pci_hostbridge_init(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{


 pci_set_cfgdata16(pi, PCIR_VENDOR, 0x1275);
 pci_set_cfgdata16(pi, PCIR_DEVICE, 0x1275);
 pci_set_cfgdata8(pi, PCIR_HDRTYPE, PCIM_HDRTYPE_NORMAL);
 pci_set_cfgdata8(pi, PCIR_CLASS, PCIC_BRIDGE);
 pci_set_cfgdata8(pi, PCIR_SUBCLASS, PCIS_BRIDGE_HOST);

 pci_emul_add_pciecap(pi, PCIEM_TYPE_ROOT_PORT);

 return (0);
}
