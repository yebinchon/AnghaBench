
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pciecap {int pcie_capabilities; int link_capabilities; int link_status; int capid; } ;
struct pci_devinst {scalar_t__ pi_bus; } ;
typedef int pciecap ;


 int PCIECAP_VERSION ;
 int PCIEM_TYPE_ENDPOINT ;
 int PCIEM_TYPE_ROOT_INT_EP ;
 int PCIY_EXPRESS ;
 int bzero (struct pciecap*,int) ;
 int pci_emul_add_capability (struct pci_devinst*,int *,int) ;

int
pci_emul_add_pciecap(struct pci_devinst *pi, int type)
{
 int err;
 struct pciecap pciecap;

 bzero(&pciecap, sizeof(pciecap));







 if ((type == PCIEM_TYPE_ENDPOINT) && (pi->pi_bus == 0))
  type = PCIEM_TYPE_ROOT_INT_EP;

 pciecap.capid = PCIY_EXPRESS;
 pciecap.pcie_capabilities = PCIECAP_VERSION | type;
 if (type != PCIEM_TYPE_ROOT_INT_EP) {
  pciecap.link_capabilities = 0x411;
  pciecap.link_status = 0x11;
 }

 err = pci_emul_add_capability(pi, (u_char *)&pciecap, sizeof(pciecap));
 return (err);
}
