
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
struct pci_devinst {int dummy; } ;


 int PCIR_DEVICE ;
 int PCIR_VENDOR ;
 int pci_hostbridge_init (struct vmctx*,struct pci_devinst*,char*) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int) ;

__attribute__((used)) static int
pci_amd_hostbridge_init(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
 (void) pci_hostbridge_init(ctx, pi, opts);
 pci_set_cfgdata16(pi, PCIR_VENDOR, 0x1022);
 pci_set_cfgdata16(pi, PCIR_DEVICE, 0x7432);

 return (0);
}
