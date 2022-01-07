
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
struct pci_devinst {scalar_t__ pi_bus; } ;


 int LPC_DEV ;
 int LPC_VENDOR ;
 int PCIC_BRIDGE ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_SUBCLASS ;
 int PCIR_VENDOR ;
 int PCIS_BRIDGE_ISA ;
 int fprintf (int ,char*) ;
 struct pci_devinst* lpc_bridge ;
 scalar_t__ lpc_init (struct vmctx*) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int ) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int ) ;
 int stderr ;

__attribute__((used)) static int
pci_lpc_init(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{




 if (lpc_bridge != ((void*)0)) {
  fprintf(stderr, "Only one LPC bridge is allowed.\n");
  return (-1);
 }






 if (pi->pi_bus != 0) {
  fprintf(stderr, "LPC bridge can be present only on bus 0.\n");
  return (-1);
 }

 if (lpc_init(ctx) != 0)
  return (-1);


 pci_set_cfgdata16(pi, PCIR_DEVICE, LPC_DEV);
 pci_set_cfgdata16(pi, PCIR_VENDOR, LPC_VENDOR);
 pci_set_cfgdata8(pi, PCIR_CLASS, PCIC_BRIDGE);
 pci_set_cfgdata8(pi, PCIR_SUBCLASS, PCIS_BRIDGE_ISA);

 lpc_bridge = pi;

 return (0);
}
