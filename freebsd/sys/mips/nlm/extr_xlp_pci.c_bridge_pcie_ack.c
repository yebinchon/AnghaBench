
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int PCIE_MSI_STATUS ;




 int XLP_IO_PCIE0_OFFSET (int ) ;
 int XLP_IO_PCIE1_OFFSET (int ) ;
 int XLP_IO_PCIE2_OFFSET (int ) ;
 int XLP_IO_PCIE3_OFFSET (int ) ;
 int nlm_nodeid () ;
 int nlm_pcicfg_base (int ) ;
 int nlm_write_pci_reg (int ,int ,int) ;

__attribute__((used)) static void
bridge_pcie_ack(int irq, void *arg)
{
 uint32_t node,reg;
 uint64_t base;

 node = nlm_nodeid();
 reg = PCIE_MSI_STATUS;

 switch (irq) {
  case 131:
   base = nlm_pcicfg_base(XLP_IO_PCIE0_OFFSET(node));
   break;
  case 130:
   base = nlm_pcicfg_base(XLP_IO_PCIE1_OFFSET(node));
   break;
  case 129:
   base = nlm_pcicfg_base(XLP_IO_PCIE2_OFFSET(node));
   break;
  case 128:
   base = nlm_pcicfg_base(XLP_IO_PCIE3_OFFSET(node));
   break;
  default:
   return;
 }

 nlm_write_pci_reg(base, reg, 0xFFFFFFFF);
 return;
}
